[package]
name = "simpleservice4"
edition = "0.5.0"
version = "0.1.0"

[dependencies]
monitoring = { oci = "oci://ghcr.io/kusionstack/monitoring", tag = "0.2.0" }
service = { oci = "oci://ghcr.io/kusionstack/service", tag = "0.2.0" }
kam = { git = "https://github.com/KusionStack/kam.git", tag = "0.2.0" }
network = { oci = "oci://ghcr.io/kusionstack/network", tag = "0.2.0" }
opsrule = { oci = "oci://ghcr.io/kusionstack/opsrule", tag = "0.2.0" }
mysql = { oci = "oci://ghcr.io/kusionstack/mysql", tag = "0.2.0" }
k8s_manifest = { oci = "oci://ghcr.io/kusionstack/k8s_manifest", tag = "0.1.0" }

[profile]
entries = ["main.k"]
