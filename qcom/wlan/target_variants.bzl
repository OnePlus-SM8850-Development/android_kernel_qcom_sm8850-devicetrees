la_targets = [
    # keep sorted
    "alor",
    "art",
    "bengal",
    "canoe",
    "chora",
    "echo",
    "kera",
    "khaje",
    "monaco",
    "parrot",
    "pineapple",
    "qti_vm",
    "ravelin",
    "seraph",
    "shikra",
    "sun",
    "tuna",
    "volcano",
    "x1e80100",
    "x1p42100",
    "yupik",
]

la_variants = [
    # keep sorted
    "consolidate",
    "perf",
]

def get_all_la_variants():
    return [(t, v) for t in la_targets for v in la_variants]

def get_all_variants():
    return get_all_la_variants()
