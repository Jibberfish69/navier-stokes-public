"""Exercise destination observations against a complete release fixture."""
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import test_canonical_release as fixtures
from canonical_release import release_context, verify_release
import release_destinations as delivery
from working_source import verify_authority, verify_working


class DestinationTests(unittest.TestCase):
    def setUp(self):
        name = next(x for x in dir(fixtures.CanonicalReleaseTests) if x.startswith("test_"))
        self.fixture = fixtures.CanonicalReleaseTests(name)
        self.fixture.setUp()
        self.addCleanup(self.fixture.doCleanups)
        self.root = self.fixture.root
        self.context = release_context(self.root)
        self.before = (self.root / "DISTRIBUTION.json").read_bytes()
        base = "https://raw.githubusercontent.com/Jibberfish69/navier-stokes-public/" + "1" * 40 + "/"
        self.urls = {key: base + self.context["artifacts"][key]["path"]
                     for key in delivery.EXPECTED["git"]}

    def observed(self, url):
        key = next(k for k, v in self.context["artifacts"].items()
                   if url.endswith(v["path"]))
        item = self.context["artifacts"][key]
        return {"url": url, "resolved_host": "raw.githubusercontent.com", "sha256": item["sha256"], "bytes": item["bytes"]}

    def test_wrong_download_keeps_existing_destination_record(self):
        stale = {"url": self.urls["native_pdf"], "sha256": "f" * 64, "bytes": 1}
        with patch.object(delivery, "observe_download", return_value=stale):
            with self.assertRaises(ValueError):
                delivery.record_download(self.root, "git", self.urls)
        self.assertEqual(self.before, (self.root / "DISTRIBUTION.json").read_bytes())

    def test_missing_download_set_is_rejected_before_network(self):
        with patch.object(delivery, "observe_download") as fetch:
            with self.assertRaises(ValueError):
                delivery.record_download(self.root, "git", {"native_pdf": self.urls["native_pdf"]})
            fetch.assert_not_called()

    def test_public_evidence_rejects_credentials_and_query_parameters(self):
        for url in [self.urls["native_pdf"] + "?token=private-test-value",
                    self.urls["native_pdf"] + "#private-test-value",
                    self.urls["native_pdf"].replace("https://", "https://person:secret@")]:
            with self.assertRaises(ValueError):
                delivery.public_url(url)
            with self.assertRaises(ValueError):
                delivery.pinned_git_commit(url)

    def test_complete_observation_binds_one_commit_and_all_artifacts(self):
        with patch.object(delivery, "observe_download", side_effect=self.observed):
            result = delivery.record_download(self.root, "git", self.urls)
        ledger = json.loads((self.root / "DISTRIBUTION.json").read_text())
        self.assertEqual(result["status"], "verified-current")
        self.assertEqual(set(ledger["destinations"]["git"]["artifacts"]), set(delivery.EXPECTED["git"]))
        self.assertTrue(verify_release(self.root)["ok"])
        self.assertFalse(verify_release(self.root, require_synchronized=True)["ok"])

    def owner(self, destination):
        return {"mode": "connector-verified", "service": "test-service", "observation": "read",
                "verified_at_utc": "2026-10-28T00:00:00Z",
                "source_manifest_sha256": self.context["source_manifest_sha256"],
                "artifacts": {key: {"sha256": self.context["artifacts"][key]["sha256"]}
                              for key in delivery.EXPECTED[destination]}}

    def test_unsent_email_cannot_be_recorded_current(self):
        evidence = self.owner("rob_email")
        evidence.update(delivery_status="draft")
        evidence["artifacts"]["custody_zip"]["url"] = self.urls["custody_zip"]
        path = self.root / "owner-private.json"
        path.write_text(json.dumps(evidence))
        with patch.object(delivery, "observe_download", side_effect=self.observed):
            with self.assertRaises(ValueError):
                delivery.record_owner_evidence(self.root, "rob_email", path)
        self.assertEqual(self.before, (self.root / "DISTRIBUTION.json").read_bytes())

    def test_reader_requires_every_approved_master_input(self):
        evidence = self.owner("rob_reader")
        evidence.update(selected_library_sha256="a" * 64, source_inputs={})
        path = self.root / "owner-private.json"
        path.write_text(json.dumps(evidence))
        with self.assertRaises(ValueError):
            delivery.record_owner_evidence(self.root, "rob_reader", path)

    def test_private_owner_fields_do_not_enter_public_receipt(self):
        evidence = self.owner("rob_email")
        evidence.update(delivery_status="sent", recipient="private@example.invalid", message_id="private-test-id")
        evidence["artifacts"]["custody_zip"]["url"] = self.urls["custody_zip"]
        path = self.root / "owner-private.json"
        path.write_text(json.dumps(evidence))
        with patch.object(delivery, "observe_download", side_effect=self.observed):
            result = delivery.record_owner_evidence(self.root, "rob_email", path)
        raw = (self.root / result["receipt"]).read_text()
        self.assertNotIn(evidence["recipient"], raw)
        self.assertNotIn(evidence["message_id"], raw)
        self.assertTrue(verify_release(self.root)["ok"])

    def test_linked_working_edit_blocks_publishing(self):
        directory = self.root / self.context["manuscript_directory"]
        self.assertTrue(verify_working(self.root, directory)["ok"])
        source = directory / "main.tex"
        source.write_bytes(source.read_bytes() + b"\n% pending edit\n")
        self.assertFalse(verify_working(self.root, directory)["ok"])

    def test_governing_source_edit_blocks_publishing(self):
        authority = self.root / "owner-authority"
        authority.mkdir()
        file = authority / "proof.md"
        file.write_bytes(b"Declared governing source.\n")
        import hashlib
        index = {"direct-proof": {"path": "proof.md", "source_sha256": hashlib.sha256(file.read_bytes()).hexdigest()}}
        self.assertTrue(verify_authority(authority, index)["ok"])
        file.write_bytes(b"Updated governing source.\n")
        result = verify_authority(authority, index)
        self.assertFalse(result["ok"])
        self.assertEqual(result["changed"], ["direct-proof"])

    def test_missing_governing_source_cannot_be_marked_current(self):
        authority = self.root / "missing-owner-authority"
        authority.mkdir()
        result = verify_working(self.root, self.fixture.directory, authority)
        self.assertFalse(result["ok"])
        self.assertTrue(result["authority_changed"])

    def test_rewritten_authority_index_cannot_bypass_its_frozen_envelopes(self):
        index = self.root / self.context["canonical"]["current_direct_custody"]
        index.write_text("{}\n")
        result = verify_working(self.root, self.fixture.directory)
        self.assertFalse(result["ok"])
        self.assertTrue(result["release_errors"])


if __name__ == "__main__":
    unittest.main()
