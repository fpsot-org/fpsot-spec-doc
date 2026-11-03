---
name: fpsot-spec-doc
description: Use when creating or reviewing an FPSOT specification repository, its pages, its jurisdiction comparison data or its published outputs.
---

# FPSOT documentation specification

This skill summarises the specification for agents.
It adds no rules of its own: every rule here cites a requirement ID from `spec/`, and the spec text wins on any difference.

## Repository

- Keep every required file: README, licences, notices, changelog, contributing, governance, `publiccode.yml`, `AGENTS.md`, the skill, CODEOWNERS and both books (DOC-001).
- The skill adds no rule and cites an ID for each rule (DOC-002). Provide `llms.txt` (DOC-003).

## Pages

- Give each guide page one `:page-type:`: tutorial, how-to, reference or explanation (DOC-010).
- Normative text in `spec/en/` and `spec/fr/`, guides in `docs/modules/<lang>/pages/`, same file names in both languages (DOC-011).
- Draw diagrams as code and give every image a text alternative (DOC-030).
- Write abbreviations so they render as `<abbr>` linked to the glossary (DOC-040).

## Jurisdictions

- Start each topic from the FPSOT default, then international, region, bloc, country, subdivision (DOC-020).
- Comparison tables have the seven columns and the four statuses (DOC-021).
- Keep the data in `jurisdictions/`, valid against `model/jurisdiction.yaml`; never hand-write the tables (DOC-022).
- Recheck rows within 12 months; a release cannot ship a stale row (DOC-023).
- Undocumented jurisdictions still get a page (DOC-024). Every comparison page says it is not legal advice (DOC-026).

## Sources

- Summarise outside standards in your own words; never copy them. Cite version, date, link and archived copy (DOC-025).

## Versions and outputs

- Each page shows its version and last-changed date from Git (DOC-031) and ends with a document history (DOC-032). Keep `CHANGELOG.md` (DOC-033).
- Provide a book with a table of contents first and the glossary last (DOC-041).
- Publish HTML and tagged PDF (PDF/UA-1, PDF/A-2b); editable formats only for RFP templates (DOC-042).
