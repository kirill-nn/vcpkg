vcpkg_from_github(
        OUT_SOURCE_PATH SOURCE_PATH
        REPO kirill-nn/net-io.git
        REF e48b759c681e95b36544ab217020baf3749d2763
        HEAD_REF master
)

vcpkg_configure_cmake(
        SOURCE_PATH "${SOURCE_PATH}"
        PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
        INSTALL "${SOURCE_PATH}/LICENSE"
        DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
        RENAME copyright)