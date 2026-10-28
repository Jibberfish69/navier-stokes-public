"""Check committed snapshots rather than an editable worktree overlay."""
from pathlib import Path
import subprocess
import unittest

import test_canonical_release as fixtures
from check_push import verify_commits


class PushGateTests(unittest.TestCase):
    def setUp(self):
        name = next(x for x in dir(fixtures.CanonicalReleaseTests) if x.startswith("test_"))
        self.fixture = fixtures.CanonicalReleaseTests(name)
        self.fixture.setUp()
        self.addCleanup(self.fixture.doCleanups)
        self.root = self.fixture.root
        self.git("init", "-q")
        self.git("config", "user.name", "Release Test")
        self.git("config", "user.email", "release-test@example.invalid")
        self.git("add", "-f", ".")
        self.git("commit", "-q", "-m", "Consistent release fixture")

    def git(self, *args):
        return subprocess.check_output(["git", "-C", str(self.root), *args], stderr=subprocess.STDOUT).decode().strip()

    def test_committed_release_passes(self):
        self.assertTrue(verify_commits(self.root, [self.git("rev-parse", "HEAD")])["ok"])

    def test_restored_working_file_cannot_hide_a_bad_commit(self):
        main = self.fixture.directory / "main.tex"
        good = main.read_bytes()
        main.write_bytes(good + b"\n% unbound committed edit\n")
        self.git("add", "-f", str(main.relative_to(self.root)))
        self.git("commit", "-q", "-m", "Unbound source fixture")
        bad_commit = self.git("rev-parse", "HEAD")
        main.write_bytes(good)
        self.assertFalse(verify_commits(self.root, [bad_commit])["ok"])


if __name__ == "__main__":
    unittest.main()
