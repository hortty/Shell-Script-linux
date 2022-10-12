#!/bin/bash

echo "Insira um numero Hexadecimal: "
read valor
echo "obase=10; ibase=16; $valor" | bc
