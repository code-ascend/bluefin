#!/bin/bash

set -ouex pipefail

dnf5 copr enable ilyaz/LACT
dnf5 install -y mc firefox lact
systemctl enable lactd