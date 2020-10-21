#! /bin/bash

# Compile a single file containing a C# Main entry point.
# Generate the '.exe' file as well as the '.il' file.

if [[ "$#" -lt 1 ]]; then
    echo "Provide a C# entry point class"
    exit 1
fi

mcs $1
NAME="${1%%.*}"
monodis "$NAME.exe" > "$NAME.il"
# cat "$NAME.il"
