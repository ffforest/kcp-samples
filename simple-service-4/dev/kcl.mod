[package]
name = "myproject"
edition = "0.5.0"
version = "0.1.0"

[dependencies]
monitoring = { oci = "oci://ghcr.io/kusionstack/monitoring", tag = "0.1.0" }
kam = { git = "https://github.com/KusionStack/kam.git", tag = "0.1.0" }
network = { oci = "oci://ghcr.io/kusionstack/network", tag = "0.1.0" }
opsrule = { oci = "oci://ghcr.io/kusionstack/opsrule", tag = "0.1.0" }

[profile]
entries = ["main.k"]

