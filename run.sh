sudo usbfuzz-afl/qemu_mode/qemu-build/x86_64-softmmu/qemu-system-x86_64 \
    -M q35 -net nic,model=e1000 -net user,host=10.0.2.10,hostfwd=tcp::1569-:22 \
    -m 4G -enable-kvm -object memory-backend-shm,id=shm -device ivshmem-plain,id=ivshmem,memdev=shm \
    -nographic \
    -kernel ./OSes/linux/arch/x86_64/boot/bzImage \
    -append "root=/dev/sda console=ttyS0" \
    -hda ./scripts/stretch.img
