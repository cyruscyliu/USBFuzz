sudo ./usbfuzz-afl/qemu_mode/qemu-build/x86_64-softmmu/qemu-system-x86_64 \
    -M q35 -device qemu-xhci,id=xhci \
    -object memory-backend-shm,id=shm \
    -device ivshmem-plain,id=ivshmem,memdev=shm \
    -m 4G -enable-kvm \
    -kernel ./OSes/linux/arch/x86_64/boot/bzImage \
    -hda ./scripts/stretch.img \
    -append 'root=/dev/sda console=ttyS0' \
    -nographic \
    -usbDescFile seeds/usb_sk4Wm9j
