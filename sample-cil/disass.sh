#! /bin/bash

# Compile a single file containing a C# Main entry point.
# Generate the '.exe' file as well as the '.il' file.

mcs $1
NAME="${1%%.*}"
monodis "$NAME.exe" > "$NAME.il"
# cat "$NAME.il"
