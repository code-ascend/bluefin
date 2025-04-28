#!/bin/bash

set -ouex pipefail

dnf5 copr enable -y ilyaz/LACT
dnf5 copr enable -y shdwchn10/zenpower3
dnf5 install -y mc firefox lact zenpower3 zenmonitor3
systemctl enable lactd

touch /usr/lib/bootc/kargs.d/10-amd-gpu.toml
echo "kargs = [\"amdgpu.ppfeaturemask=0xffffffff\"]" > /usr/lib/bootc/kargs.d/10-amd-gpu.toml