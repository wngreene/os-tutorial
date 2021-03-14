#!/usr/bin/env bash

# Compile bootsector.
nasm -f bin bootsector_memory.asm -o bootsector_memory.bin

# Launch virtual machine to load boot_sector.
qemu-system-x86_64 bootsector_memory.bin
