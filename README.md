# C-to-ASM Cloud IDE (Mini Project)

A simple web service that allows users to:
- Upload C source code through a web interface
- Compile it to assembly code (`.s`) inside an isolated Docker container
- View the resulting assembly code in the browser

---

## Features

- **C language** support (default)
- Safe code compilation using Docker
- Generates assembly code via `gcc -S`
- Sends the result back via REST API

---

## Tech Stack

- **Node.js** + **Express** — backend server
- **Docker** — secure container-based code execution
- **GCC** — compiler for C
- **uuid / fs-extra** — manage temporary files and directories
- **Frontend** — optional (React, plain HTML+JS, etc.)




