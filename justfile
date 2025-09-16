# Cross-platform shell configuration
# Use PowerShell on Windows (higher precedence than shell setting)
set windows-shell := ["powershell.exe", "-NoLogo", "-Command"]
# Use sh on Unix-like systems
set shell := ["sh", "-c"]

fonts := "template/assets/fonts"

watch $file:
  typst watch {{file}} --font-path {{fonts}}

build $file:
  typst compile {{file}} --font-path {{fonts}}

build-all:
  just build cv_ru.typ
  just build cv_en.typ
