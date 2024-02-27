if [[ "$1" == "--all" ]]; then
    for board in buildroot/configs/*_defconfig; do
        board_config=$(basename $board)
        cat "$board" "configs/config.in" > "configs/${board_config}" && echo "$board_config"
    done
else
    for board in raspberrypi0w_defconfig raspberrypi2_defconfig; do
        cat "buildroot/configs/${board}" "configs/config.in" > "configs/${board}" && echo "$board"
        case "${board}" in
            raspberrypi0w_defconfig)
                dts="bcm2708-rpi-zero bcm2708-rpi-zero-w bcm2708-rpi-b bcm2708-rpi-b-plus bcm2708-rpi-cm"
                ;;
            raspberrypi2_defconfig)
                dts="bcm2709-rpi-2-b bcm2710-rpi-2-b bcm2710-rpi-3-b bcm2710-rpi-3-b-plus bcm2710-rpi-cm3 bcm2711-rpi-4-b bcm2711-rpi-cm4"
                ;;
        esac
    sed -i \
        -e "s/BR2_LINUX_KERNEL_INTREE_DTS_NAME=\"[^\"]*\"/BR2_LINUX_KERNEL_INTREE_DTS_NAME=\"${dts}\"/g" \
        -e "s|BR2_ROOTFS_POST_BUILD_SCRIPT=\"[^\"]*\"|BR2_ROOTFS_POST_BUILD_SCRIPT=\"../board/${board%_defconfig}/post-build.sh\"|g" \
        -e "s|BR2_ROOTFS_POST_IMAGE_SCRIPT=\"[^\"]*\"|BR2_ROOTFS_POST_IMAGE_SCRIPT=\"../board/${board%_defconfig}/post-image.sh\"|g" \
        "configs/${board}"
    done
fi
