load("@rules_devicetree//devicetree:dtbo.bzl", "dtbo")
load("@rules_pkg//pkg:install.bzl", "pkg_install")
load("@rules_pkg//pkg:mappings.bzl", "pkg_files", "strip_prefix")
load(
    ":platform_map.bzl",
    "get_dtbo_list",
)
load("target_variants.bzl", "get_all_variants")

def to_src(dt_file):
    if dt_file[-4:] == "dtbo":
        return dt_file[:-4] + "dtso"
    elif dt_file[-3:] == "dtb":
        return dt_file[:-3] + "dts"

def define_all_dtbs_dtbos(target, variant):
    dtbos = get_dtbo_list(target)

    for dtbo_name in dtbos:
        dtbo(
            name = "{}_{}_{}".format(target, variant, dtbo_name.replace("/", "_")),
            srcs = [to_src(dtbo_name)],
            deps = [":all_wlan_dtsi"],
        )
    return dtbos

def define_target(target, variant, dtbos):
    dtbo_list = ["{}_{}_{}".format(target, variant, name.replace("/", "_")) for name in dtbos]
    target_variant_prefix = "{}_{}_".format(target, variant)

    pkg_files(
        name = "{}_{}_wlan_dtbos".format(target, variant),
        srcs = dtbo_list,
        visibility = ["//visibility:private"],
        renames = {
            "{}{}".format(target_variant_prefix, name.replace("/", "_")): name.split("/")[-1]
            for name in dtbos
        },
    )

    pkg_install(
        name = "{}_{}_dtbos_dist".format(target, variant),
        srcs = ["{}_{}_wlan_dtbos".format(target, variant)],
        destdir = "out/target/product/{}/dlkm/lib/modules".format(target),
    )

def define_all_targets():
    target_list = get_all_variants()
    for t, v in target_list:
        dtbos = define_all_dtbs_dtbos(t, v)
        define_target(t, v, dtbos)
