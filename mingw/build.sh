#!/bin/sh -ex

# Set default artifacts dir if not specified
[ -z "${MB_ARTIFACTS_DIR}" ] && MB_ARTIFACTS_DIR="artifacts"

alias curl='curl -fsSR --connect-timeout 15 -m 20 --retry 3'

gpg_recv_key() {
  # https://keys.openpgp.org/about/api
  req="pks/lookup?op=get&options=mr&exact=on&search=0x$1"
# curl "https://keys.openpgp.org/${req}"        | gpg --import --status-fd 1 || \
  curl "https://pgpkeys.eu/${req}"              | gpg --import --status-fd 1 || \
  curl "https://keyserver.ubuntu.com/${req}"    | gpg --import --status-fd 1
}

# MinGW-w64 binaries from https://bintray.com/vszakats/generic/openssl are
# recommended by OpenSSL (see https://wiki.openssl.org/index.php/Binaries)
OPENSSL_BASE_URL="https://bintray.com/vszakats/generic"
OPENSSL_LATEST_URL=$(curl -Ls -o /dev/null -w %{url_effective} ${OPENSSL_BASE_URL}/openssl/_latestVersion)
OPENSSL_VER_=$(basename "${OPENSSL_LATEST_URL}")
dl_openssl_bin() {
  OPENSSL_CPU=$1
  OPENSSL_ARCHIVE_NAME="openssl-${OPENSSL_VER_}-win${OPENSSL_CPU}-mingw"
  OPENSSL_ARCHIVE_FILE="${OPENSSL_ARCHIVE_NAME}.tar.xz"
  OPENSSL_ARCHIVE_SIG="${OPENSSL_ARCHIVE_FILE}.asc"
  # Download tarball
  curl -o "${OPENSSL_ARCHIVE_FILE}" -L --proto-redir =https "${OPENSSL_BASE_URL}/download_file?file_path=${OPENSSL_ARCHIVE_FILE}" || exit 1
  # Download the signature
  curl -o "${OPENSSL_ARCHIVE_SIG}" -L --proto-redir =https "${OPENSSL_BASE_URL}/download_file?file_path=${OPENSSL_ARCHIVE_SIG}" || exit 1
  # Verify with Bintray key
  GPG_PK="379CE192D401AB61"
  gpg_recv_key ${GPG_PK}
  gpg --verify-options show-primary-uid-only --verify "${OPENSSL_ARCHIVE_SIG}" "${OPENSSL_ARCHIVE_FILE}" || exit 1
  # Extract tarball
  rm -rf "${OPENSSL_ARCHIVE_NAME}"
  tar -xvf "${OPENSSL_ARCHIVE_FILE}" >/dev/null 2>&1 || exit 1
}

# MinGW-w64 binaries from https://bintray.com/jefty/generic/libevent-windows
LIBEVENT_BASE_URL="https://bintray.com/jefty/generic"
LIBEVENT_LATEST_URL=$(curl -Ls -o /dev/null -w %{url_effective} ${LIBEVENT_BASE_URL}/libevent-windows/_latestVersion)
LIBEVENT_VER_=$(basename "${LIBEVENT_LATEST_URL}" | sed -e "s/^release-//")
dl_libevent_bin() {
  LIBEVENT_CPU=$1
  LIBEVENT_ARCHIVE_NAME="libevent-${LIBEVENT_VER_}-win${LIBEVENT_CPU}-mingw"
  LIBEVENT_ARCHIVE_FILE="${LIBEVENT_ARCHIVE_NAME}.tar.xz"
  LIBEVENT_ARCHIVE_SIG="${LIBEVENT_ARCHIVE_FILE}.asc"
  # Download tarball
  curl -o "${LIBEVENT_ARCHIVE_FILE}" -L --proto-redir =https "${LIBEVENT_BASE_URL}/download_file?file_path=${LIBEVENT_ARCHIVE_FILE}" || exit 1
  # Download the signature
  curl -o "${LIBEVENT_ARCHIVE_SIG}" -L --proto-redir =https "${LIBEVENT_BASE_URL}/download_file?file_path=${LIBEVENT_ARCHIVE_SIG}" || exit 1
  # Verify with Bintray key
  GPG_PK="54C6264DACC7489C"
  gpg_recv_key ${GPG_PK}
  gpg --verify-options show-primary-uid-only --verify "${LIBEVENT_ARCHIVE_SIG}" "${LIBEVENT_ARCHIVE_FILE}" || exit 1
  # Extract tarball
  rm -rf "${LIBEVENT_ARCHIVE_NAME}"
  tar -xvf "${LIBEVENT_ARCHIVE_FILE}" >/dev/null 2>&1 || exit 1
}

build_mb() {
  CPU=$1

  dl_openssl_bin    $1
  dl_libevent_bin   $1

  if [ "${CPU}" = "64" ] ; then
    CC_PREFIX="x86_64-w64-mingw32-"
    export LIBEVENT64_DIR="${PWD}/${LIBEVENT_ARCHIVE_NAME}"
    export OPENSSL64_DIR="${PWD}/${OPENSSL_ARCHIVE_NAME}"
  else
    CC_PREFIX="i686-w64-mingw32-"
    export LIBEVENT32_DIR="${PWD}/${LIBEVENT_ARCHIVE_NAME}"
    export OPENSSL32_DIR="${PWD}/${OPENSSL_ARCHIVE_NAME}"
  fi

  make CXX=${CC_PREFIX}g++ ${CPU} -f memtier_benchmark.mk

  # Rename binaries
  mv -v "bin/Debug${CPU}/memtier_benchmark.exe" "${MB_ARTIFACTS_DIR}/memtier_benchmark-win${CPU}_dbg.exe"
  mv -v "bin/Release${CPU}/memtier_benchmark.exe" "${MB_ARTIFACTS_DIR}/memtier_benchmark-win${CPU}.exe"
}

make -f memtier_benchmark.mk clean

mkdir -p "${MB_ARTIFACTS_DIR}"

build_mb 64
build_mb 32

# Check binaries using objdump
x86_64-w64-mingw32-objdump -x ${MB_ARTIFACTS_DIR}/*win64*.exe | grep -E -i "(file format|dll name)"
i686-w64-mingw32-objdump -x ${MB_ARTIFACTS_DIR}/*win32*.exe | grep -E -i "(file format|dll name)"

cd "${MB_ARTIFACTS_DIR}"
sha256sum *.exe | tee "SHA256SUMS"
