const express = require("express");
const cors = require("cors");
const fs = require("fs");
const { exec } = require("child_process");
const path = require("path");
const workdir = path.resolve("./c_cods");

const PORT = 5000;
const app = express();

app.use(express.json());
app.use(cors());

app.post("/runcode", async (req, res) => {
  const value = req.body.code;
  await fs.writeFile(`${workdir}/code.c`, value, (err) => {
    if (err) {
      return console.log(err);
    }
    try {
      exec(
        `docker run --rm \
           -v "${workdir}:/app" \
           --workdir /app \
           gcc \
           bash -c "gcc -S -O2 -fverbose-asm code.c -o code.s"`,
        (error, stdout, stderr) => {
          if (error) {
            console.error(`❌ Ошибка: ${error.message}`);
            return;
          }
          if (stderr) {
            console.error(`⚠️ Системная ошибка: ${stderr}`);
            return;
          }
          console.log(`✅ Контейнер запущен: ${stdout}`);
        },
      );
    } catch (e) {
      console.log(e);
    }
    fs.readFile(`${workdir}/code.s`, (err, data) => {
      if (err) {
        return console.log(err);
      }
      res.send(data.toString());
    });
  });
});

app.listen(PORT, () => {
  console.log("Server running");
});
