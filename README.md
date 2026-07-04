# zipper

A file compressor tool written in C.

## Build

In Visual Studio Code:

- Install the recommended C/C++ extension when prompted.
- Press `Ctrl+Shift+B` and choose `Build zipper` if VS Code asks.

On Windows PowerShell:

```powershell
.\build.ps1
```

Or with `make`:

```sh
make
```

## Run

In Visual Studio Code:

- Press `F5` to build and debug `build/zipper.exe`.

On Windows PowerShell:

```powershell
.\build.ps1 -Run
```

Or with `make`:

```sh
make run
```

The compiled executable is written to `build/`.
