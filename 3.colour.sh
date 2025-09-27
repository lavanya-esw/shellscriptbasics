#!/bin/bash

# 30: Black
# 31: Red
# 32: Green
# 33: Yellow
# 34: Blue
# 35: Magenta
# 36: Cyan
# 37: White
# 90-97: Bright versions of the above colors

NOCOLOUR="\e[0m"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
M="\e[35m"
C="\e[36m"

echo -e "$R RED COLOUR $NOCOLUR"
echo -e "$G GREEN COLOUR $NOCOLUR"
echo -e "$Y YELLOW COLOUR $NOCOLUR"
echo -e "$B BLUE COLOUR $NOCOLUR"
echo -e "$M MAGENTA COLOUR $NOCOLUR"
echo -e "$C CYAN COLOUR $NOCOLUR"