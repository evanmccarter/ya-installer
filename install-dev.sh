#! /bin/bash
set -e

INSTALL_DIR=$1
mkdir -p ${INSTALL_DIR}

export YA_INSTALLER_DATA=${YA_INSTALLER_DATA:-${INSTALL_DIR}/ya-installer}
export YA_INSTALLER_BIN=${YA_INSTALLER_BIN:-${INSTALL_DIR}/bin}
export YA_INSTALLER_LIB=${YA_INSTALLER_LIB:-${INSTALL_DIR}/lib}

export YA_INSTALLER_VARIANT=provider
export YA_INSTALLER_COREV=0.5.0
export YA_INSTALLER_CORE=pre-rel-v${YA_INSTALLER_COREV}-495172ea

export YA_INSTALLER_WASI=${YA_INSTALLER_WASI:-0.2.1}
export YA_INSTALLER_VM=${YA_INSTALLER_VM:-0.2.3}

./installer.sh

echo "Remember to set EXE_UNIT_PATH in your .env to ${INSTALL_DIR}/lib/plugins/ya-runtime-*.json"
