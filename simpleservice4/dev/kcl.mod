[package]
name = "simpleservice4"
edition = "0.5.0"
version = "0.1.0"

[dependencies]
monitoring = { oci = "oci://ghcr.io/kusionstack/monitoring", tag = "0.2.0" }
service = { oci = "oci://ghcr.io/kusionstack/service", tag = "0.2.0" }
kam = { git = "https://github.com/KusionStack/kam.git", tag = "0.2.0" }
network = { oci = "oci://ghcr.io/kusionstack/network", tag = "0.2.0" }

[profile]
entries = ["main.k"]
