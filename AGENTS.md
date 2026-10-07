# E2E Cloud fixture instructions

This repository is a disposable CloudCodeX Windows Bootstrap validation fixture.

- Do not modify, force-update, or merge into the default branch.
- Do not open pull requests.
- The authorized Windows-only check is: `pwsh -NoProfile -File .\\tests\\windows-smoke.ps1`.
- Plugin-owned temporary or managed CI resources are allowed only as defined by the installed CloudCodeX Windows Bootstrap contracts.
- The expected execution surface for this test is a real Codex Cloud Linux environment.
