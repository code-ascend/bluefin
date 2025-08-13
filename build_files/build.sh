#!/bin/bash

set -ouex pipefail

dnf5 copr enable -y ilyaz/LACT
dnf5 install -y mc firefox lact NetworkManager-libreswan-gnome npm
systemctl enable lactd

touch /usr/lib/bootc/kargs.d/10-amd-gpu.toml
touch /usr/lib/bootc/kargs.d/11-amd-gpu-fix-artefact.toml
echo "kargs = [\"amdgpu.ppfeaturemask=0xffffffff\"]" > /usr/lib/bootc/kargs.d/10-amd-gpu.toml
echo "kargs = [\"amdgpu.dcdebugmask=0x10\"]" > /usr/lib/bootc/kargs.d/11-amd-gpu-fix-artefact.toml
