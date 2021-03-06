# shellcheck disable=SC2148,SC1091
source ../postgresql/plan.sh

pkg_name=postgresql95
pkg_version=9.5.12
pkg_origin=core
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_description="PostgreSQL is a powerful, open source object-relational database system."
pkg_upstream_url="https://www.postgresql.org/"
pkg_license=('PostgreSQL')
pkg_source="https://ftp.postgresql.org/pub/source/v${pkg_version}/postgresql-${pkg_version}.tar.bz2"
pkg_shasum="02e86f5c66467731bbec18fde96e0daf38c13c9141d8e7d41be663ab6fa6f698"
pkg_dirname="postgresql-${pkg_version}"

# Copy service files (hooks, config, default.toml) from the postgresql plan
do_begin() {
  _copy_service_files
}

# Cleanup from our workaround in `do_begin`
do_end() {
  _cleanup_copied_service_files
}
