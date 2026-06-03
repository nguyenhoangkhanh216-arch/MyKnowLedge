---
title: "KMDD Material Optimization Decisions"
type: source
tags: [work, science]
created: 2026-06-03
updated: 2026-06-03
sources: 1
raw_file: "E:\\MyVault\\Emails\\KMDD\\2026-06-03 - RE KMDD - Provide Technical Justification for Material Opimization.md"
---

## Summary

Three material changes from FEED were proposed, justified, and confirmed for KMDD: (1) Seawater/Firewater piping from GRE to CuNi 90/10, (2) Fresh water piping from CS Galvanized to SS 316, (3) Duplex pipe class bolts from SS B8M to CS A320 + ZnNi + PTFE. All three driven by EPC practicality and long-term reliability. Changes formalized via TQR to COMPANY.

## Key Points

### 1. Seawater/Firewater System: GRE → CuNi 90/10
- **Decision confirmed:** 07-May-2026 (by COMPANY in procurement meeting)
- **TQR issued:** ~22-May-2026, currently with VSP for review
- **CuNi advantages over GRE:**
  - Higher allowable stress → more compact sizing possible
  - No procurement risk: widely available vs. GRE specialist suppliers with single-source risk
  - Conventional welded fabrication (no special tools/training/certs required)
  - Easier offshore repair: welding vs. vendor mobilization for GRE
  - UV resistance (GRE degrades despite UV certification — lesson learned from previous projects)
  - Weight: only +0.2 MT per platform
  - Velocity: acceptable up to 10 m/s for intermittent service per Norsok P-001 (continuous service limited to 3 m/s)
- **CuNi constraint:** Must not keep stagnant seawater inside piping for more than 6–9 months → pinhole corrosion risk
- **Mitigation confirmed:** Current fire ring main routing designed to avoid stagnant sections
- **Status as of 03-Jun-2026:** PVEP-KM accepted design confirmation of no stagnant sections

### 2. Fresh Water System: CS Galvanized → Stainless Steel 316
- **Decision confirmed:** Concurrent with CuNi decision
- **SS 316 advantages over HDG:**
  - No zinc leaching/de-zincification; HDG rusts day by day in operation
  - Suitable for eyewash service (hygiene requirement) — not addressed in FEED
  - Easier fabrication: no post-welding re-galvanizing required
  - Weight: −0.6 MT per platform
  - Minimal maintenance vs. complex HDG repair cycle
- **HDG constraint:** Repair requires re-galvanizing, which is inconsistent and impractical offshore

### 3. Duplex Pipe Class Bolts: SS B8M → CS A320 + ZnNi coating + PTFE topcoat
- **Decision confirmed:** Internal PTSC engineering consensus (April 2026)
- **Reason for change:** CS A320 has significantly higher allowable bolt stress (172 MPa vs. 138 MPa for B8M) → better safety margin for flange leak check
- **Corrosion mitigation:** Non-metallic washers and sleeves to prevent dissimilar metal contact between CS bolt and DSS/SS flange
- **PTFE role:** Friction/galling resistance ONLY — not corrosion protection. ZnNi is the corrosion protection layer
- **PTFE thickness:** Not to be specified in documents; vendor to advise based on application
- **Standard references:** ISO 21457, Norsok M-001 (material selection), Norsok P-001 (velocity limits)

## Connections

- [[KMDD Project]] — these are resolved material decisions; update KMDD entity with "confirmed decisions" section
- [[Offshore Piping Material Selection]] — this email thread is the primary KMDD case for this concept
- [[Piping Pressure Temperature Rating]] — related: material selection also affects P-T rating curves

## Source References

- Primary thread: `E:\MyVault\Emails\KMDD\2026-04-08 to 2026-06-03 - Material Optimization thread`
- Comparison table: `2026-04-13 - RE KMDD - Provide Technical Justification for Material Opimization.md`
- Latest: `2026-06-03 - RE KMDD - Provide Technical Justification for Material Opimization.md`
