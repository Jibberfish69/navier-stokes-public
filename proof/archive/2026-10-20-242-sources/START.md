# NS proof: start here

## Current presentation PDFs

- [Latest proof excerpt](presentations/how-the-proof-works-ns-excerpt.pdf)

- [Revised main paper](presentations/unified-unforced-forced-openai-refutation.pdf)

The retained Markdown, HTML and executable proof files are unchanged.

Begin with **Recovered argument** in the HTML viewer. In the executable, read the source-recovery entry with either command:

```sh
python3 NS.proof.pyz work --branch unforced --entry recovered
python3 NS.proof.pyz work --branch forced --entry recovered
```

This entry develops the recovered source argument with original speaker and source attribution. Historical optional and withdrawn branches remain separate.

This bundle contains the proof exposition, mathematical sources and tools for
reading them. No prior recipient explanations, evaluation reports or saved
reader notes are included.

## Give it to an AI

For a chat that reads text attachments, attach **NS.proof.md**. It is one readable
file containing both proof branches, the full technical walkthrough, original
theorem and proof passages, and the author's How the Proof Works sections.

For an AI that can extract files and run Python, attach **NS.proof-handoff.zip**.
Ask it to extract the ZIP and read this file. **NS.proof.pyz** contains the
mathematical sources and runs with Python 3, without dependencies or a network:

```sh
python3 NS.proof.pyz work --branch unforced --entry datum
python3 NS.proof.pyz work --branch forced --entry datum
python3 NS.proof.pyz --help
```

The work commands display the ordered construction through endpoint and restart.
Other available entries are mixed, spatial and height. Use author, all, ask,
open and source to read at different depths. verify checks the retained bytes.
The optional MCP interface is python3 NS.proof.pyz serve.

For an uncoached receiving task, use this prompt:

> Explain the whole proof in the supplied object in your own words.

For ongoing work, replace that sentence with your mathematical question.
No earlier conversation is needed. The receiving system must be able to read
the attached text or extract and inspect the bundle.

## Files

- NS.proof.md: complete readable text edition; the simplest chat attachment.
- NS.proof.pyz: executable workspace with exact mathematical source bytes.
- NS.proof.html: offline viewer for a person; open locally in a browser.
- START.md: these instructions.
- HANDOFF.json: file hashes and format identification.

These are access forms of one proof workspace. Choose the form supported by
the receiving AI. No MCP installation is required. A new reader can save its
own work later; none is preloaded here.
