"""Focused checks for immutable snapshot preparation."""
import base64
import json
from pathlib import Path
import tempfile
import unittest
import zipfile
import subprocess
from argparse import Namespace

from canonical_release import digest, source_digest
from prepare_release import PrepareError, audit_receipt, copy_baseline, freeze_sources, source_closure, version_sources, version_custody_sources, write_prepared_files


class PrepareChecks(unittest.TestCase):
    def test_custody_provenance_versions_without_changing_sanitized_text(self):
        raw = b'Proof source fixture.\n'
        document = {'path': 'problems/navier-stokes/proof.md', 'text': raw.decode(),
                    'source_sha256': 'a' * 64, 'sanitized_sha256': digest(raw)}
        first, first_map = version_custody_sources({}, {'proof-spine': document}, '1' * 64)
        second, second_map = version_custody_sources(first, {'proof-spine': document}, '2' * 64)
        changed_owner = dict(document, source_sha256='b' * 64)
        third, third_map = version_custody_sources(second, {'proof-spine': changed_owner}, '2' * 64)
        self.assertNotEqual(first_map['proof-spine'], second_map['proof-spine'])
        self.assertNotEqual(second_map['proof-spine'], third_map['proof-spine'])
        self.assertTrue(all(third[key] == value for key, value in first.items()))
        self.assertTrue(all(third[key] == value for key, value in second.items()))
        self.assertEqual(base64.b64decode(third[third_map['proof-spine']]['content_b64']), raw)
        self.assertEqual(third[third_map['proof-spine']]['source_sha256'], 'b' * 64)
        self.assertEqual(third[third_map['proof-spine']]['snapshot_id'], '2' * 64)

    def test_freeze_preserves_master_and_detects_a_later_edit(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp) / 'project'
            root.mkdir()
            master = root / 'main.tex'
            original = b'\\input{body}\n% Original source bytes.\n'
            master.write_bytes(original)
            (root / 'body.tex').write_bytes(b'body\n')
            output = Path(temp) / 'snapshot'
            result = freeze_sources(Namespace(root=root, master=master, output=output, release_date='2026-10-28'))
            record = json.loads((output / 'source-freeze.json').read_text())
            self.assertTrue(result['frozen'])
            self.assertNotIn('ready', result)
            self.assertEqual((output / 'source/main.tex').read_bytes(), original)
            self.assertEqual(record['inputs']['main.tex'], digest(original))
            master.write_bytes(original + b'% Later edit.\n')
            changed = source_closure(master)
            self.assertNotEqual(source_digest({name: digest(raw) for name, raw in changed.items()}), record['source_manifest_sha256'])
            self.assertEqual((output / 'source/main.tex').read_bytes(), original)

    def test_transitive_inputs_and_comment_exclusion(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            (root / 'parts').mkdir()
            (root / 'main.tex').write_text('\\input  {parts/a}\n% \\input{absent}\n')
            (root / 'parts/a.tex').write_text('\\input{parts/b.tex}\n')
            (root / 'parts/b.tex').write_text('body\n')
            self.assertEqual(set(source_closure(root / 'main.tex')),
                             {'main.tex', 'parts/a.tex', 'parts/b.tex'})

    def test_missing_input_is_a_failure(self):
        with tempfile.TemporaryDirectory() as temp:
            master = Path(temp) / 'main.tex'
            master.write_text('\\input{absent}\n')
            with self.assertRaises(PrepareError):
                source_closure(master)

    def test_one_source_edit_changes_identity_without_overwriting_history(self):
        # Exercise the actual published corpus, rather than a matching miniature.
        root = Path(__file__).resolve().parents[1]
        with zipfile.ZipFile(root / 'proof/NS.proof.pyz') as archive:
            previous = json.loads(archive.read('sources.json'))
        self.assertGreaterEqual(len(previous), 290)
        canonical = json.loads((root / 'CANONICAL.json').read_text())
        paper = (root / canonical['manuscript_release']['path']).parent
        names = json.loads((root / canonical['source_manifest']['path']).read_text())
        first = {name: (paper / name).read_bytes() for name in names}
        second = dict(first)
        changed = 'parts/unforced/00-how-proof-works.tex'
        second[changed] += b'\n% Source identity regression fixture.\n'
        first_id = source_digest({key: digest(raw) for key, raw in first.items()})
        second_id = source_digest({key: digest(raw) for key, raw in second.items()})
        kept, first_aliases = version_sources(previous, first, first_id, 'paper')
        updated, second_aliases = version_sources(kept, second, second_id, 'paper')
        self.assertNotEqual(first_id, second_id)
        self.assertNotEqual(first_aliases[changed], second_aliases[changed])
        self.assertTrue(all(updated[key] == record for key, record in previous.items()))
        self.assertTrue(all(updated[key] == record for key, record in kept.items()))
        self.assertEqual(base64.b64decode(updated[second_aliases[changed]]['content_b64']), second[changed])

    def test_stale_audit_cannot_promote_new_sources(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            receipt = root / 'audit.json'
            receipt.write_text(json.dumps({'source_manifest_sha256': 'old'}))
            with self.assertRaisesRegex(PrepareError, 'different source snapshot'):
                audit_receipt(receipt, 'new', {})

    def test_candidate_omits_unrelated_untracked_files(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp) / 'repo'
            root.mkdir()
            subprocess.run(['git', 'init', '-q', str(root)], check=True)
            (root / 'README.md').write_text('public\n')
            subprocess.run(['git', 'add', 'README.md'], cwd=root, check=True)
            (root / '.env').write_text('PRIVATE_FIXTURE=value\n')
            out = Path(temp) / 'candidate'
            copy_baseline(root, out)
            self.assertTrue((out / 'README.md').exists())
            self.assertFalse((out / '.env').exists())

    def test_non_git_repeat_uses_public_allowlist_and_ignores_private_injections(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp) / 'prepared'
            root.mkdir()
            (root / 'README.md').write_text('public\n')
            write_prepared_files(root, 'fixture-source')
            (root / '.env').write_text('PRIVATE_FIXTURE=value\n')
            (root / '.canonical-evidence').mkdir()
            (root / '.canonical-evidence/owner.json').write_text('{"private_fixture":true}\n')
            (root / 'unknown.txt').write_text('unlisted\n')
            out = Path(temp) / 'next'
            copy_baseline(root, out)
            self.assertEqual((out / 'README.md').read_bytes(), b'public\n')
            self.assertFalse((out / '.env').exists())
            self.assertFalse((out / '.canonical-evidence').exists())
            self.assertFalse((out / 'unknown.txt').exists())

    def test_non_git_changed_declared_file_or_missing_manifest_is_rejected(self):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp) / 'prepared'
            root.mkdir()
            (root / 'README.md').write_text('public\n')
            with self.assertRaises(PrepareError):
                copy_baseline(root, Path(temp) / 'without-manifest')
            write_prepared_files(root, 'fixture-source')
            (root / 'README.md').write_text('changed\n')
            with self.assertRaisesRegex(PrepareError, 'changed or is missing'):
                copy_baseline(root, Path(temp) / 'changed')
            self.assertFalse((Path(temp) / 'changed').exists())


if __name__ == '__main__':
    unittest.main()
