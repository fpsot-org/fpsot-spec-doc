---
name: fpsot-spec-doc
description: Use when creating or reviewing an FPSOT specification repository, its pages, its jurisdiction comparison data or its published outputs.
---

# FPSOT documentation specification

This skill summarizes the specification for agents.
It adds no rules of its own: every rule here cites a requirement ID from `spec/`, and the spec text wins on any difference.

## Repository

- Keep every required file: README, licenses, notices, changelog, contributing, governance, `publiccode.yml`, `AGENTS.md`, the skill, CODEOWNERS and both books (DOC-001).
- The skill adds no rule and cites an ID for each rule (DOC-002). Provide `llms.txt` (DOC-003).

## Pages

- Give each guide page one `:page-type:`: tutorial, how-to, reference or explanation (DOC-010).
- Normative text in `spec/en/` and `spec/fr/`, guides in `docs/modules/<lang>/pages/`, same file names in both languages (DOC-011).
- Draw diagrams as code and give every image a text alternative (DOC-030).
- Write abbreviations so they render as `<abbr>` linked to the glossary; inside a citation link's text, write them plainly (DOC-040).
- Name the language of each code block, such as `[source,json]`, or `text` for plain output (DOC-046).

## Jurisdictions

- Start each topic from the FPSOT default, then international, region, bloc, country, subdivision (DOC-020).
- Comparison tables have the seven columns and the four statuses (DOC-021).
- Keep the data in `jurisdictions/`, valid against `model/jurisdiction.yaml`; never hand-write the tables (DOC-022).
- Recheck rows within 12 months; a release cannot ship a stale row (DOC-023).
- Undocumented jurisdictions still get a page (DOC-024). Every comparison page says it is not legal advice (DOC-026).

## Sources

- Summarize outside standards in your own words; never copy them (DOC-025).
- Link each outside standard where a page names it, for example RFC 8174 to its RFC Editor page (DOC-043).
- End each page that cites outside sources with a References section, right before the document history: Normative and Informative entries with title, version, date, link and archived copy (DOC-044).

## Versions and outputs

- Each page shows its version and last-changed date from Git (DOC-031) and ends with a document history (DOC-032). Keep `CHANGELOG.md` (DOC-033).
- Provide a book with a table of contents first and the glossary last (DOC-041).
- Publish HTML and tagged PDF (PDF/UA-1, PDF/A-2b); editable formats only for RFP templates (DOC-042).
- In HTML, mark links that leave the site with an external-link marker that screen readers announce, and never force a new tab (DOC-045).
