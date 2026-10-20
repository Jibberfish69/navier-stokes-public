# Portable Navier–Stokes custody object

[Download the complete ZIP](NS.proof-handoff.zip) · [Read the instructions](START.md) · [Current manuscript](../papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/)

The October 20, 2026 release contains 242 retained source snapshots and 20 argument transitions.
The ZIP and its seven loose members are published byte for byte from the supplied package.
[RELEASE.json](RELEASE.json) records the package, presentation attachments, archived edition, and file hashes.

## Current presentation PDFs

- [How the Proof Works: 11-page excerpt](presentations/how-the-proof-works-ns-excerpt.pdf)
- [Revised main paper: 234 pages](presentations/unified-unforced-forced-openai-refutation.pdf)

The current manuscript's 42 TeX inputs have a [separate source archive](../papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/current-source.zip).
The retained proof-source snapshots remain exactly as supplied in this custody package.
The [Figshare version 4](https://doi.org/10.6084/m9.figshare.34005666.v4) download matches the revised main paper PDF in this package.

## Choose a format

| Format | Use |
| --- | --- |
| [NS.proof.md](NS.proof.md) | Attach this readable text file to an AI chat. |
| [NS.proof-handoff.zip](NS.proof-handoff.zip) | Give this bundle to an AI that can extract files and run Python. |
| [NS.proof.pyz](NS.proof.pyz) | Run the offline reader with Python 3. |
| [NS.proof.html](NS.proof.html) | Download this viewer and open it in a local browser. |

The ZIP includes these reading formats, [START.md](START.md), [HANDOFF.json](HANDOFF.json), and both presentation PDFs.

## Use the offline reader

Python 3 is the only requirement. The reader needs no network connection or additional packages.
From the directory that contains `NS.proof.pyz`, run this command:

```sh
python3 NS.proof.pyz verify
```

To read the recovered unforced construction, run this command:

```sh
python3 NS.proof.pyz work --branch unforced --entry recovered
```

To read the recovered forced construction, run this command:

```sh
python3 NS.proof.pyz work --branch forced --entry recovered
```

[START.md](START.md) lists the other reading routes and the prompt for a new receiving AI.
[SHA256SUMS](SHA256SUMS) contains the current release file hashes.
The `verify` command checks archive integrity and retained source bytes.

## Earlier public edition

[The October 19 edition with 58 sources](archive/2026-10-19-58-sources/) preserves all eight previously published files without changes.
[The archive index](archive/README.md) links its original ZIP and release record.
