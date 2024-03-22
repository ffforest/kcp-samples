[package]
name = "myproject"
edition = "0.5.0"
version = "0.1.0"

[dependencies]
catalog = { git = "https://github.com/ffforest/catalog.git", tag = "0.1.3" }
[profile]
entries = ["main.k"]

