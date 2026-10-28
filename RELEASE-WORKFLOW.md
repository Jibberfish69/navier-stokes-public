# Canonical release workflow

`CANONICAL.json` selects the combined manuscript and its source manifest.
`tools/canonical_release.py` owns the release checks.
`DISTRIBUTION.json` records current destination evidence.
States inside frozen packages describe their build time.

The manuscript, portable PDF, excerpt and proof reader derive from one frozen source snapshot.
Each new release retains its predecessor and every earlier source record.
File checks preserve identity and scope. They do not establish a mathematical theorem.

## Link a working manuscript

Run this command in the public repository checkout:

```sh
python3 tools/working_source.py install --source-root /path/to/working-manuscript
```

The command preserves an existing custom hook directory and stops for integration.
The installed push hook verifies the actual commits that Git will send.
It also detects changes in the linked working manuscript.
GitHub Actions runs the release checks on pushes and pull requests.

## Freeze and prepare an update

Edit the master selected by the canonical record.
Keep generated copies separate from that editable source.
Freeze its transitive inputs before compilation:

```sh
python3 tools/prepare_release.py --freeze-only \
  --master /path/to/working-manuscript/main.tex \
  --output /path/to/new-snapshot \
  --release-date YYYY-MM-DD
```

Compile the native, portable and excerpt PDFs from that frozen snapshot.
Complete source, build, text and rendered-page review.
Bind the review receipt to the source manifest and exact PDF hashes.
Prepare the candidate:

```sh
python3 tools/prepare_release.py \
  --master /path/to/new-snapshot/source/main.tex \
  --output /path/to/new-candidate \
  --release-date YYYY-MM-DD \
  --native-pdf /path/to/native.pdf \
  --portable-pdf /path/to/portable.pdf \
  --portable-source /path/to/portable-source \
  --excerpt-pdf /path/to/excerpt.pdf \
  --excerpt-source /path/to/excerpt-source \
  --qa-receipt /path/to/final-review.json
```

The command rejects stale review evidence and mismatched copies.
It adds immutable source identifiers, retains earlier records and records the parent release.
It resets destination states to pending.
It does not publish or send messages.

Copy the candidate files into the publishing checkout. Preserve its `.git` directory.
Stage every release file, including archived PDFs.
Run the gate before the commit:

```sh
python3 -m unittest discover -s tools -p 'test_*.py'
python3 tools/canonical_release.py verify
```

## Record an actual destination update

After the Git push, use full commit identifiers in all download URLs:

```sh
python3 tools/release_destinations.py record-download --destination git \
  --artifact native_pdf=HTTPS_COMMIT_PINNED_PDF_URL \
  --artifact custody_zip=HTTPS_COMMIT_PINNED_PACKAGE_URL \
  --artifact current_source=HTTPS_COMMIT_PINNED_SOURCE_URL
```

The recorder downloads every artifact and compares its bytes with the canonical record.
It records the observation and updates the citation link.
For Figshare, publish the prepared PDF through its normal authorized workflow.
Then record the actual public version:

```sh
python3 tools/release_destinations.py record-download --destination figshare \
  --figshare-version ACTUAL_VERSION \
  --artifact native_pdf=HTTPS_FIGSHARE_FILE_URL
```

Rob's reader requires an observed selected library and every approved master source hash.
Rob's email requires observed sent-message evidence and an immutable, verified package link.
The owner supplies this evidence after the actual connector read:

```sh
python3 tools/release_destinations.py record-owner-evidence \
  --destination rob_reader --evidence /private/path/reader-observation.json
python3 tools/release_destinations.py record-owner-evidence \
  --destination rob_email --evidence /private/path/sent-observation.json
```

Keep raw account evidence outside the repository.
Public receipts omit private addresses, message identifiers and server URLs.
A prepared message or package never counts as delivered.
Commit the resulting public receipts and destination record.

## Completion check

```sh
python3 tools/canonical_release.py verify --require-synchronized
```

This command fails until every required destination has current evidence.
The ordinary gate permits explicit pending states so that Git publication can precede external delivery.
No command in this workflow grants publication, messaging or shared-server authority.
Existing authorizations and service terms still govern those actions.
