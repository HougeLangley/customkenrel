# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="6"
K_WANT_GENPATCHES="base extras"
K_GENPATCHES_VER="1"
K_SECURITY_UNSUPPORTED="1"
K_NOSETEXTRAVERSION="1"
PROJECTC_VERSION="r3"
ETYPE="sources"

inherit kernel-2-src-prepare-overlay
detect_version

DESCRIPTION="Full Project-C CPU Scheduler sources including the Gentoo patchset for the ${KV_MAJOR}.${KV_MINOR} kernel tree"
HOMEPAGE="https://cchalpha.blogspot.com/"
LICENSE+=" CDDL"
SRC_URI="${KERNEL_BASE_URI}/linux-${KV_MAJOR}.${KV_MINOR}.tar.xz https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.8.14.xz https://github.com/HougeLangley/customkernel/releases/download/5.8.10-projectc/cpu-patches.xz https://github.com/HougeLangley/customkernel/releases/download/5.8.10-projectc/fsgsbase.xz https://github.com/HougeLangley/customkernel/releases/download/5.8.10-projectc/prjc_v5.8-r3.xz https://github.com/HougeLangley/customkernel/releases/download/%E6%9B%B4%E6%80%A7UKSM-5.8/UKSM.xz https://github.com/HougeLangley/customkernel/releases/download/%E6%9B%B4%E6%80%A7UKSM-5.8/zstd.xz https://github.com/HougeLangley/customkernel/releases/download/5.8.10-projectc/zen.xz https://github.com/HougeLangley/customkernel/releases/download/Project-dead-patch/v5.8DWL.xz https://github.com/HougeLangley/customkernel/releases/download/LL-patchs/2048.xz https://github.com/HougeLangley/customkernel/releases/download/LL-patchs/750.xz https://github.com/HougeLangley/customkernel/releases/download/LL-patchs/elevator.xz https://github.com/HougeLangley/customkernel/releases/download/LL-patchs/SC.xz ${GENPATCHES_URI}"

UNIPATCH_LIST_DEFAULT=""
UNIPATCH_LIST="${DISTDIR}/patch-5.8.14.xz ${DISTDIR}/prjc_v5.8-r3.xz ${DISTDIR}/fsgsbase.xz ${DISTDIR}/UKSM.xz ${DISTDIR}/zstd.xz ${DISTDIR}/zen.xz ${DISTDIR}/cpu-patches.xz ${DISTDIR}/v5.8DWL.xz ${DISTDIR}/SC.xz ${DISTDIR}/elevator.xz ${DISTDIR}/750.xz ${DISTDIR}/2048.xz"

KEYWORDS="~amd64"

src_prepare() {

	eapply "${FILESDIR}/btrfs1.patch"
    eapply "${FILESDIR}/btrfs2.patch"
    eapply "${FILESDIR}/btrfs3.patch"
    eapply "${FILESDIR}/btrfs4.patch"
    eapply "${FILESDIR}/btrfs5.patch"
    eapply "${FILESDIR}/btrfs6.patch"
    eapply "${FILESDIR}/btrfs7.patch"
    eapply "${FILESDIR}/btrfs8.patch"
    eapply "${FILESDIR}/btrfs9.patch"
    eapply "${FILESDIR}/btrfs10.patch"
    eapply "${FILESDIR}/btrfs11.patch"
    eapply "${FILESDIR}/btrfs12.patch"
    eapply "${FILESDIR}/btrfs13.patch"
    eapply "${FILESDIR}/btrfs14.patch"
    eapply "${FILESDIR}/btrfs15.patch"
    eapply "${FILESDIR}/btrfs16.patch"
    eapply "${FILESDIR}/btrfs17.patch"
    eapply "${FILESDIR}/btrfs18.patch"
    eapply "${FILESDIR}/btrfs19.patch"
    eapply "${FILESDIR}/btrfs20.patch"
    eapply "${FILESDIR}/btrfs21.patch"
    eapply "${FILESDIR}/btrfs22.patch"

	kernel-2-src-prepare-overlay_src_prepare

}
