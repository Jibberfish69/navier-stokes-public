# Portable Navier–Stokes custody object

[Download the complete ZIP](NS.proof-handoff.zip) · [Read the instructions](START.md) · [Current manuscript](../papers/navier-stokes/unified-unforced-forced-openai-refutation-20260924/)

The October 19, 2026 release contains 58 source snapshots and 16 argument transitions.
It includes all 42 inputs of the current manuscript.
[RELEASE.json](RELEASE.json) records the source refresh, edition details, and file hashes.

## Choose a format

| Format | Use |
| --- | --- |
| [NS.proof.md](NS.proof.md) | Attach this readable text file to an AI chat. |
| [NS.proof-handoff.zip](NS.proof-handoff.zip) | Give this bundle to an AI that can extract files and run Python. |
| [NS.proof.pyz](NS.proof.pyz) | Run the offline reader with Python 3. |
| [NS.proof.html](NS.proof.html) | Download this viewer and open it in a local browser. |

The ZIP contains the text, Python archive, HTML viewer, instructions, and a manifest.
It excludes earlier recipient explanations, evaluation reports, and saved reader notes.

## Use the offline reader

Python 3 is the only requirement. The reader needs no network connection or additional packages.
From the directory that contains `NS.proof.pyz`, run this command:

```sh
python3 NS.proof.pyz verify
```

To read the unforced construction, run this command:

```sh
python3 NS.proof.pyz work --branch unforced --entry datum
```

To read the forced construction, run this command:

```sh
python3 NS.proof.pyz work --branch forced --entry datum
```

[START.md](START.md) lists the other reading routes and the prompt for a new receiving AI.
[SHA256SUMS](SHA256SUMS) contains the release file hashes.
The `verify` command verifies archive integrity and source bytes.
