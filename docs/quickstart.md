# Quickstart — aurekai-node-red

Aurekai pipeline as a Node-RED flow.

## Import Flow

In Node-RED: Hamburger → Import → Paste JSON from `flows/aurekai-pipeline.json`.

## Nodes

- **Start** → `akai doctor --deep --json`
- **Release Gate** → `akai release gate --version 0.8.0-alpha.4 --json`

## Validate Locally

```bash
bash tests/validate-schemas.sh
bash tests/validate-scripts.sh
```
