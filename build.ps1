param(
    [switch]$Run
)

$ErrorActionPreference = 'Stop'

New-Item -ItemType Directory -Force build | Out-Null

gcc -std=c11 -Wall -Wextra -pedantic -Iinclude src/main.c -o build/zipper.exe

if ($Run) {
    & .\build\zipper.exe
}
