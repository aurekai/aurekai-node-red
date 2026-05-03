<p align="center">
  <img src="https://raw.githubusercontent.com/aurekai/aurekai/main/assets/aurekai-logo.svg" alt="Aurekai" width="520" />
</p>

# `aurekai-node-red` · v0.8.0-alpha.5

Official Node-RED integration for Aurekai — edge/event/telephony runtime flows with persistent context, Dashboard 2.0, and Link Call subflows.

## Flow Templates

| Flow | Description |
|---|---|
| AkaiTel → Transcript | FreeSWITCH TCP event → `akai transcribe` → JSON result |
| PCAP → Wire Report | HTTP upload → `akai wire ingest-pcap` → `akai wire report` |
| MQTT Event → Akai Artifact | MQTT device event → route by type → `akai` dispatch → proof bundle |
| HTTP Upload → Pipeline | HTTP audio/file upload → full intake pipeline |
| MoQ Video Relay Monitor | `akai moq video-relay` status loop → Dashboard display |
| Netlist Seal and Eval | HTTP trigger → `akai net seal` → `akai net eval-sealed` → proof |

## Host-native features used

- **Persistent context** — `global.set('akai_space', ...)` syncing AkaiSpace state across flows
- **Dashboard 2.0** — runtime status, queue depth, call log, proof URI display
- **Link Call** — synchronous `akai-transcribe` and `akai-proof` subflow calls
- **Exec nodes** — `akai {command} --json` execution with JSON parse
- **TCP In** — FreeSWITCH Event Socket for real-time call events
- **MQTT In** — device event routing to capability families

## Quick Start

```bash
# Import flows
# In Node-RED: Hamburger menu → Import → flows/aurekai-flows.json

# Or via CLI
node-red-admin import flows/aurekai-flows.json
```

## Layout

```
flows/
  aurekai-flows.json    6 Node-RED flow tab definitions
```


Aurekai integration surface for Node Red.

Status: active
Type: workflow

## Core Template Set

- doctor-deep
- manifest-verify
- model-memory-pack
- sae-audit
- semantic-cache-bench
- proof-bundle-export
- release-gate

## Canonical References

- Platform: https://github.com/aurekai/aurekai
- Native runtime: https://github.com/aurekai/native-runtime
- Integration registry: https://github.com/aurekai/aurekai/blob/main/registry/integrations.json
- Ecosystem map: https://github.com/aurekai/aurekai/blob/main/ECOSYSTEM_NAMES.md
