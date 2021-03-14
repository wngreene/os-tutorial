#!/usr/bin/env bash

# Compile bootsector.
nasm -f bin bootsector_hello.asm -o bootsector_hello.bin

# Launch virtual machine to load boot_sector.
qemu-system-x86_64 bootsector_hello.bin
