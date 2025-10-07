#!/usr/bin/env bash
# permconvert.sh — convert between octal and symbolic permissions

perm="$1"

if [[ -z "$perm" ]]; then
  echo "Usage: $0 <permission>"
  echo "Example: $0 755  or  $0 rwxr-xr-x"
  exit 1
fi

# Convert octal → symbolic
if [[ "$perm" =~ ^[0-7]{3}$ ]]; then
  symbols=("---" "--x" "-w-" "-wx" "r--" "r-x" "rw-" "rwx")
  for (( i=0; i<3; i++ )); do
    digit=${perm:i:1}
    echo -n "${symbols[digit]}"
  done
  echo
  exit 0
fi

# Convert symbolic → octal
if [[ "$perm" =~ ^[r-][w-][x-][r-][w-][x-][r-][w-][x-]$ ]]; then
  octal=""
  for (( i=0; i<9; i+=3 )); do
    tri=${perm:i:3}
    val=0
    [[ ${tri:0:1} == "r" ]] && ((val+=4))
    [[ ${tri:1:1} == "w" ]] && ((val+=2))
    [[ ${tri:2:1} == "x" ]] && ((val+=1))
    octal+="$val"
  done
  echo "$octal"
  exit 0
fi

echo "Error: Input must be either 3-digit octal (e.g. 755) or 9-char symbolic (e.g. rwxr-xr-x)"
exit 1
