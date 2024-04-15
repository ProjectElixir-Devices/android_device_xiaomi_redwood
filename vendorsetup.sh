#!/bin/bash
rm -rf device/xiaomi/redwood
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_device_xiaomi_redwood -b elixir device/xiaomi/redwood

rm -rf vendor/xiaomi/redwood
git clone --depth=1 https://github.com/ProjectElixir-Devices/android_vendor_xiaomi_redwood -b elixir vendor/xiaomi/redwood


rm -rf kernel/xiaomi/redwood
git clone --depth=1 https://github.com/bavvtm/kernel_xiaomi_redwood -b main kernel/xiaomi/redwood
cd kernel/xiaomi/redwood && git submodule init && git submodule update KernelSU && cd ../../../

rm -rf hardware/Dolby-Vision
git clone --depth=1 https://github.com/chuspita/hardware_Dolby-Vision -b master  hardware/Dolby-Vision

rm -rf hardware/dolby
git clone --depth=1 https://github.com/chuspita/hardware_dolby -b A13 hardware/dolby
