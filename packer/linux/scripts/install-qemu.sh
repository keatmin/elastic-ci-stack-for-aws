#!/usr/bin/env

set -Eeufo pipefail

QEMU_VERSION=6.2.0
echo "--- Installing QEMU $QEMU_VERSION"
sudo docker run --privileged --userns=host --rm "tonistiigi/binfmt:qemu-v$QEMU_VERSION" --uninstall qemu-*
sudo docker run --privileged --userns=host --rm "tonistiigi/binfmt:qemu-v$QEMU_VERSION" --install all
