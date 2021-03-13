#!/usr/bin/env bash

# Compile bootsector.
nasm -f bin bootsector.asm -o bootsector.bin

# Launch virtual machine to load boot_sector.
qemu-system-x86_64 bootsector.bin
