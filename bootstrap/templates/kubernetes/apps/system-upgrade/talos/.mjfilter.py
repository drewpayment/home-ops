main = lambda data: (
    data.get("bootstrap_distribution", "k3s") in ["talos"] and
        data.get("talos", {}).get("schematic_id", {})
)
