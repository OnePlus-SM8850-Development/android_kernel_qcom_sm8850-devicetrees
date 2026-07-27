load("@bazel_skylib//lib:sets.bzl", "sets")

_platform_map = {
    "art": {
        "dtbo_list": [
            # keep sorted
            {"name": "art-atp-fig.dtbo"},
            {"name": "art-cdp-fig.dtbo"},
            {"name": "art-cdp-peach.dtbo"},
            {"name": "art-heap-cdp-fig.dtbo"},
            {"name": "art-heap-mtp-fig.dtbo"},
            {"name": "art-heap-rcm-fig.dtbo"},
            {"name": "art-leap-mtp-fig.dtbo"},
            {"name": "art-leap-mtp-peach.dtbo"},
            {"name": "art-leap-qrd-fig.dtbo"},
            {"name": "art-leap-rcm-fig.dtbo"},
            {"name": "art-mtp-fig.dtbo"},
            {"name": "art-mtp-peach.dtbo"},
            {"name": "art-omtp-fig.dtbo"},
            {"name": "art-qrd-fig.dtbo"},
            {"name": "art-rcm-fig.dtbo"},
            {"name": "art-rcm-peach.dtbo"},
        ],
    },
    "echo": {
        "dtbo_list": [
            # keep sorted
            {"name": "echo-fig-cnss.dtbo"},
        ],
    },
    "x1p42100": {
        "dtbo_list": [
            # keep sorted
            {"name": "x1p42100-kiwi-cnss.dtbo"},
        ],
    },
    "canoe": {
        "dtbo_list": [
            # keep sorted
            {"name": "canoe-cdp-kiwi-no-l3k.dtbo"},
            {"name": "canoe-cdp-peach-no-l3k.dtbo"},
            {"name": "canoe-kiwi-cnss.dtbo"},
            {"name": "canoe-peach-cnss.dtbo"},
            {"name": "canoep-hdk-peach-cnss.dtbo"},
        ],
    },
    "alor": {
        "dtbo_list": [
            # keep sorted
            {"name": "alor-atp-peach.dtbo"},
            {"name": "alor-cdp-peach.dtbo"},
            {"name": "alor-cdp-wcn7750.dtbo"},
            {"name": "alor-mtp-peach.dtbo"},
            {"name": "alor-mtp-wcn7750.dtbo"},
            {"name": "alor-qrd-peach.dtbo"},
            {"name": "alor-qrd-wcn7750.dtbo"},
            {"name": "alor-rcm-peach.dtbo"},
            {"name": "alor-rcm-wcn7750.dtbo"},
        ],
    },
    "chora": {
        "dtbo_list": [
            # keep sorted
            {"name": "chora-atp-wcn6450.dtbo"},
            {"name": "chora-bonefish-mtp-wcn6450.dtbo"},
            {"name": "chora-bonefish-mtp-wcn7750.dtbo"},
            {"name": "chora-bonefish-qrd-wcn6450.dtbo"},
            {"name": "chora-bonefish-qrd-wcn7750.dtbo"},
            {"name": "chora-cdp-wcn6450.dtbo"},
            {"name": "chora-cdp-wcn7750.dtbo"},
            {"name": "chora-mtp-wcn6450.dtbo"},
            {"name": "chora-mtp-wcn7750.dtbo"},
            {"name": "chora-qrd-wcn6450.dtbo"},
            {"name": "chora-qrd-wcn7750.dtbo"},
            {"name": "chora-rcm-wcn6450.dtbo"},
            {"name": "chora-rcm-wcn7750.dtbo"},
        ],
    },
    "malabar": {
        "dtbo_list": [
            # keep sorted
            {"name": "malabar-adrastea.dtbo"},
        ],
    },
    "sun": {
        "dtbo_list": [
            # keep sorted
            {"name": "sun-kiwi-cnss.dtbo"},
            {"name": "sun-kiwi-cnss-v8.dtbo"},
            {"name": "sun-peach-cnss.dtbo"},
            {"name": "sun-peach-cnss-v8.dtbo"},
            {"name": "sunp-hdk-peach-cnss-v8.dtbo"},
            {"name": "sunp-rcm-peach-cnss-v8.dtbo"},
        ],
    },
    "pineapple": {
        "dtbo_list": [
            # keep sorted
            {"name": "pineapple-kiwi-cnss.dtbo"},
            {"name": "pineapplep-hdk-kiwi-cnss.dtbo"},
        ],
    },
    "x1e80100": {
        "dtbo_list": [
            # keep sorted
            {"name": "hamoa_la-kiwi-cnss.dtbo"},
            {"name": "x1e80100-kiwi-cnss.dtbo"},
            {"name": "x1e80100-kiwi-qcb-cnss.dtbo"},
            {"name": "x1e80100-kiwi-qcp-cnss.dtbo"},
        ],
    },
    "ravelin": {
        "dtbo_list": [
            # keep sorted
            {"name": "ravelin-atp-adrastea.dtbo"},
            {"name": "ravelin-idp-adrastea.dtbo"},
            {"name": "ravelin-qca6490-cnss.dtbo"},
            {"name": "ravelin-qca6750-icnss.dtbo"},
            {"name": "ravelin-qrd-adrastea.dtbo"},
        ],
    },
    "parrot": {
        "dtbo_list": [
            # keep sorted
            {"name": "parrot-atp-wcn3990.dtbo"},
            {"name": "parrot-idp-wcn3990.dtbo"},
            {"name": "parrot-idp-wcn6750.dtbo"},
            {"name": "parrot-idp-wcn6755.dtbo"},
            {"name": "parrot-qrd-wcn3990.dtbo"},
            {"name": "parrot-qrd-wcn6750.dtbo"},
            {"name": "parrot-qrd-wcn6755.dtbo"},
            {"name": "parrot-rumi-wcn3990.dtbo"},
        ],
    },
    "volcano": {
        "dtbo_list": [
            # keep sorted
            {"name": "volcano-qca6750.dtbo"},
            {"name": "volcano-wcn6450.dtbo"},
            {"name": "volcano6i-peach-cnss.dtbo"},
        ],
    },
    "tuna": {
        "dtbo_list": [
            # keep sorted
            {"name": "tuna-atp-kiwi.dtbo"},
            {"name": "tuna-cdp-wcn7750.dtbo"},
            {"name": "tuna-mtp-kiwi.dtbo"},
            {"name": "tuna-mtp-qmp1000-wcn7750.dtbo"},
            {"name": "tuna-mtp-wcn7750.dtbo"},
            {"name": "tuna-qrd-kiwi.dtbo"},
            {"name": "tuna-qrd-wcn7750.dtbo"},
            {"name": "tuna-rcm-kiwi.dtbo"},
            {"name": "tuna-rcm-wcn7750.dtbo"},
        ],
    },
    "kera": {
        "dtbo_list": [
            # keep sorted
            {"name": "kera-atp-qca6750.dtbo"},
            {"name": "kera-cdp-qca6750.dtbo"},
            {"name": "kera-evk-wcn7760.dtbo"},
            {"name": "kera-mtp-qca6750.dtbo"},
            {"name": "kera-mtp-wcn7750.dtbo"},
            {"name": "kera-qrd-wcn7750.dtbo"},
            {"name": "kera-rcm-qca6750.dtbo"},
            {"name": "kera-rcm-wcn7750.dtbo"},
        ],
    },
    "seraph": {
        "dtbo_list": [
            # keep sorted
            {"name": "seraph-advance-peach-cnss.dtbo"},
            {"name": "seraph-peach-cnss.dtbo"},
            {"name": "seraph-qar-cnss.dtbo"},
        ],
    },
    "pikachu": {
        "dtbo_list": [
            # keep sorted
            {"name": "pikachu-peach-cnss.dtbo"},
        ],
    },
    "qti_vm": {
        "dtbo_list": [
            # keep sorted
            {"name": "lemans-gh-vm-cnss.dtbo"},
            {"name": "lemans-vm-cnss.dtbo"},
            {"name": "monaco-gh-vm-cnss.dtbo"},
            {"name": "monaco-vm-cnss.dtbo"},
            {"name": "sa8255p-vm-cnss.dtbo"},
            {"name": "sa8797p-gunyah-vm-cnss.dtbo"},
            {"name": "sa8797p-sdp8-vm-cnss.dtbo"},
        ],
    },
    "yupik": {
        "dtbo_list": [
            # keep sorted
            {"name": "yupik-qca6490-cnss.dtbo"},
            {"name": "yupik-qca6750-cnss.dtbo"},
        ],
    },
    "lahaina": {
        "dtbo_list": [
            # keep sorted
            {"name": "lahaina-qca6490-cnss.dtbo"},
        ],
    },
    "khaje": {
        "dtbo_list": [
            # keep sorted
            {"name": "khaje-cnss.dtbo"},
        ],
    },
    "bengal": {
        "dtbo_list": [
            # keep sorted
            {"name": "bengal-cnss.dtbo"},
        ],
    },
    "scuba": {
        "dtbo_list": [
            # keep sorted
            {"name": "scuba-cnss.dtbo"},
        ],
    },
    "monaco": {
        "dtbo_list": [
            # keep sorted
            {"name": "monaco-cnss.dtbo"},
            {"name": "monaco-standalone-cnss.dtbo"},
        ],
    },
    "shikra": {
        "dtbo_list": [
            # keep sorted
            {"name": "shikra-cnss.dtbo"},
        ],
    },
    "sa525m": {
        "dtbo_list": [
            # keep sorted
            {"name": "sa525m-cnss.dtbo"},
        ],
    },
    "sa510m": {
        "dtbo_list": [
            # keep sorted
            {"name": "sa510m-cnss.dtbo"},
        ],
    },
}

def _get_dtb_lists(target, dt_overlay_supported):
    if not target in _platform_map:
        fail("{} not in device tree platform map!".format(target))

    ret = {
        "dtb_list": [],
        "dtbo_list": [],
    }

    for dtb_node in [target] + _platform_map[target].get("binary_compatible_with", []):
        ret["dtb_list"].extend(_platform_map[dtb_node].get("dtb_list", []))
        if dt_overlay_supported:
            ret["dtbo_list"].extend(_platform_map[dtb_node].get("dtbo_list", []))
        else:
            # Translate the dtbo list into dtbs we can append to main dtb_list
            for dtb in _platform_map[dtb_node].get("dtb_list", []):
                dtb_base = dtb["name"].replace(".dtb", "")
                for dtbo in _platform_map[dtb_node].get("dtbo_list", []):
                    if not dtbo.get("apq", True) and dtb.get("apq", False):
                        continue

                    dtbo_base = dtbo["name"].replace(".dtbo", "")
                    ret["dtb_list"].append({"name": "{}-{}.dtb".format(dtb_base, dtbo_base)})

    return ret

def get_dtbo_list(target, dt_overlay_supported = True):
    return [dtb["name"] for dtb in _get_dtb_lists(target, dt_overlay_supported).get("dtbo_list", [])]

