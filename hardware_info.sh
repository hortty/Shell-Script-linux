#!/usr/bin/env bash

touch hardware_info.txt
echo ---------------------------------Network Info-------------------------------- >> hardware_info.txt
ifconfig >> hardware_info.txt
echo ---------------------------------CPU Info------------------------------------ >> hardware_info.txt
lscpu >> hardware_info.txt
echo ---------------------------------GPU Info------------------------------------ >> hardware_info.txt
lspci -k | grep -EA3 'VGA|3D' >> hardware_info.txt
echo ---------------------------------Memory Info--------------------------------- >> hardware_info.txt
free -h >> hardware_info.txt
echo ---------------------------------System and Kernel Info---------------------- >> hardware_info.txt
uname -a >> hardware_info.txt
echo ---------------------------------PCI Info____________________________________ >> hardware_info.txt
lspci -v >> hardware_info.txt
echo ----------------------------------------------------------------------------- >> hardware_info.txt
cat hardware_info.txt | more
