# Current Navier–Stokes proof object

[Download the complete ZIP](NS.proof-handoff.zip) · [Read the instructions](START.md) · [Current manuscript](../papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/) · [Canonical release record](../CANONICAL.json)

The October 28, 2026 object contains 290 source snapshots: the earlier 242 records unchanged, the 42 current manuscript inputs, and six approved sanitized governing proof sources. Its current entries reproduce the frozen manuscript openings verbatim. Earlier reader routes remain labeled with their retained October 20 presentation date.

The ZIP includes the current 233-page paper, the 11-page opening excerpt, the complete current source ZIP, and the offline reader in Markdown, HTML and executable formats. [RELEASE.json](RELEASE.json) and [SHA256SUMS](SHA256SUMS) bind these copies by their hashes.

```sh
python3 NS.proof.pyz verify
python3 NS.proof.pyz work --branch unforced --entry current
python3 NS.proof.pyz work --branch forced --entry current
```

The source viewer preserves source wording and symbols. [The current direct-source index](current-sources/SOURCE-INDEX.json) records the original owner-source hash and the sanitized public-source hash separately.

[Earlier editions](archive/README.md) retain the prior public releases unchanged. The [Figshare record](https://doi.org/10.6084/m9.figshare.34005666) remains linked by its unversioned DOI; the release record states whether the exact current PDF has been deposited there.
