pkg_name=gdk-pixbuf
pkg_origin=core
pkg_version="2.36.11"
pkg_description="An image loading library."
pkg_upstream_url="https://developer.gnome.org/gdk-pixbuf/"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('GPL-2.0')
pkg_source="https://download.gnome.org/sources/${pkg_name}/${pkg_version%.*}/${pkg_name}-${pkg_version}.tar.xz"
pkg_shasum=ae62ab87250413156ed72ef756347b10208c00e76b222d82d9ed361ed9dde2f3
pkg_deps=(
  core/coreutils
  core/glib
  core/glibc
  core/jbigkit
  core/libffi
  core/libiconv
  core/libjpeg-turbo
  core/libpng
  core/libtiff
  core/pcre
  core/shared-mime-info
  core/util-linux
  core/xz
  core/zlib
)
pkg_build_deps=(
  core/gcc
  core/make
  core/perl
  core/pkg-config
)
pkg_bin_dirs=(bin)
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)
pkg_pconfig_dirs=(lib/pkgconfig)