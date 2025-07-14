const express = require("express");
const cors = require("cors");
const fs = require("fs").promises;
const { exec } = require("child_process");
const path = require("path");
const util = require("util");
const execAsync = util.promisify(exec);
const workdir = path.resolve("./c_cods");

const PORT = 5000;
const app = express();

app.use(express.json());
app.use(cors());

app.post("/runcode", async (req, res) => {
  const value = req.body.code;

  try {
    await fs.writeFile(`${workdir}/code.c`, value, (err) => {
      if (err) {
        return console.log(err);
      }
    });

    const { stdout, stderr } = await execAsync(`
      docker run --rm \
        -v "${workdir}:/app" \
        --workdir /app \
        gcc \
        bash -c "gcc -S -O2 -masm=intel -fno-optimize-sibling-calls -fno-inline code.c -o code.s && sed '/^\\s*#/d; s/#.*\$//' code.s > code_clean.s"
    `);

    if (stderr) {
      console.error("⚠️ stderr:", stderr);
      return res.status(400).send(stderr);
    }

    const result = await fs.readFile(`${workdir}/code.s`, "utf8");
    res.send(result);
  } catch (err) {
    console.error("❌ Ошибка:", err.message);
    res.status(500).send("Ошибка при выполнении кода.");
  }
});

app.post("/runcodecpp", async (req, res) => {
  const value = req.body.code;

  try {
    await fs.writeFile(`${workdir}/code.cpp`, value, (err) => {
      if (err) {
        return console.log(err);
      }
    });

    const { stdout, stderr } = await execAsync(
      `docker run --rm \
      -v "${workdir}:/app" \
      --workdir /app \
      gcc \
      bash -c "gcc -x c++ -O2 -masm=intel -fno-optimize-sibling-calls -fno-inline code.cpp -S -o codecpp.s && sed '/^\\s*#/d; s/#.*\$//' codecpp.s > codecpp_clean.s"`,
    );

    if (stderr) {
      console.error("⚠️ stderr:", stderr);
      return res.status(400).send(stderr);
    }

    const result = await fs.readFile(`${workdir}/codecpp.s`, "utf8");
    res.send(result);
  } catch (err) {
    console.error("❌ Ошибка:", err.message);
    res.status(500).send("Ошибка при выполнении кода.");
  }
});

app.post("/runcodedisasm", async (req, res) => {
  const value = req.body.code;

  try {
    await fs.writeFile(`${workdir}/code.c`, value);

    const { stdout, stderr } = await execAsync(`
      docker run --rm \
      -v "${workdir}:/app" \
      --workdir /app \
      gcc \
      bash -c "gcc -g -O2 code.c -o program && objdump -d -Mintel -C program > disasm.s"
    `);

    if (stderr) {
      console.error(`⚠️ stderr: ${stderr}`);
      return res.status(400).send(stderr);
    }

    const disasm = await fs.readFile(`${workdir}/disasm.s`, "utf8");
    res.send(disasm);
  } catch (err) {
    console.error("❌ Ошибка:", err.message || err);
    res.status(500).send("Ошибка при выполнении дизассемблирования.");
  }
});

app.post("/runcodedisasmcpp", async (req, res) => {
  const value = req.body.code;

  try {
    await fs.writeFile(`${workdir}/code.cpp`, value);

    const { stdout, stderr } = await execAsync(
      `docker run --rm \
        -v "${workdir}:/app" \
        --workdir /app \
        gcc \
        bash -c "g++ -g -O2 code.cpp -o main && objdump -d -Mintel -C main > disasmcpp.s"`,
    );

    if (stderr) {
      console.error(`⚠️ stderr: ${stderr}`);
      return res.status(400).send(stderr);
    }

    const disasm = await fs.readFile(`${workdir}/disasmcpp.s`, "utf8");
    res.send(disasm);
  } catch (err) {
    console.error("❌ Ошибка:", err.message || err);
    res.status(500).send("Ошибка при выполнении дизассемблирования.");
  }
});

app.listen(PORT, () => {
  console.log("Server running");
});
