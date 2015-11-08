# Before hand, create a directory on device
# Put it in this variable
ON_DEVICE_DIR=/data/local/tmp/OpenBLAS

# Make all 3 levels of test
# Use a separate command because make build executables but fails to test them
make HOSTCC=gcc CC=~/code/arm-toolchain/bin/arm-linux-androideabi-gcc AR=~/code/arm-toolchain/bin/arm-linux-androideabi-ar FC=~/code/arm-toolchain/bin/arm-linux-androideabi-gfortran RANLIB=~/code/arm-toolchain/bin/arm-linux-androideabi-ranlib TARGET=ARMV7 USE_THREAD=1 NUM_THREADS=4 NO_LAPACK=0 level1
make HOSTCC=gcc CC=~/code/arm-toolchain/bin/arm-linux-androideabi-gcc AR=~/code/arm-toolchain/bin/arm-linux-androideabi-ar FC=~/code/arm-toolchain/bin/arm-linux-androideabi-gfortran RANLIB=~/code/arm-toolchain/bin/arm-linux-androideabi-ranlib TARGET=ARMV7 USE_THREAD=1 NUM_THREADS=4 NO_LAPACK=0 level2
make HOSTCC=gcc CC=~/code/arm-toolchain/bin/arm-linux-androideabi-gcc AR=~/code/arm-toolchain/bin/arm-linux-androideabi-ar FC=~/code/arm-toolchain/bin/arm-linux-androideabi-gfortran RANLIB=~/code/arm-toolchain/bin/arm-linux-androideabi-ranlib TARGET=ARMV7 USE_THREAD=1 NUM_THREADS=4 NO_LAPACK=0 level3

# Push executables and their data to device
adb push sblat1 ${ON_DEVICE_DIR}
adb push dblat1 ${ON_DEVICE_DIR}
adb push cblat1 ${ON_DEVICE_DIR}
adb push zblat1 ${ON_DEVICE_DIR}

adb push sblat2 ${ON_DEVICE_DIR}
adb push sblat2.dat ${ON_DEVICE_DIR}
adb push dblat2 ${ON_DEVICE_DIR}
adb push dblat2.dat ${ON_DEVICE_DIR}
adb push cblat2 ${ON_DEVICE_DIR}
adb push cblat2.dat ${ON_DEVICE_DIR}
adb push zblat2 ${ON_DEVICE_DIR}
adb push zblat2.dat ${ON_DEVICE_DIR}

adb push sblat3 ${ON_DEVICE_DIR}
adb push sblat3.dat ${ON_DEVICE_DIR}
adb push dblat3 ${ON_DEVICE_DIR}
adb push dblat3.dat ${ON_DEVICE_DIR}
adb push cblat3 ${ON_DEVICE_DIR}
adb push cblat3.dat ${ON_DEVICE_DIR}
adb push zblat3 ${ON_DEVICE_DIR}
adb push zblat3.dat ${ON_DEVICE_DIR}

# Push the testing script
adb push on_device_test.sh ${ON_DEVICE_DIR}
