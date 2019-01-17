platform -name zc706oc -desc "zc706 with overclocking enabled" \
    -hw ./zc706oc.dsa -out ./output -prebuilt

system -name linux -display-name "Linux" -boot ../sw/linux/boot
domain -name linux -proc ps7_cortexa9_0 -os linux -image ../sw/linux/linux/image
boot -bif ../sw/linux/boot/linux.bif

platform -generate
