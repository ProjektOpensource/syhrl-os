@echo off

cd sec1
nasm boot.asm -f bin -o boot.bin
cd ..
cd sec2
nasm extended.asm -f bin -o extended.bin
cd ..
copy /b sec1\boot.bin+sec2\extended.bin test.flp

qemu-system-x86_64 test.flp
cls