# E2E Cloud fixture instructions

This repository is a disposable CloudCodeX Windows Bootstrap validation fixture.

- Do not modify, force-update, or merge into the default branch.
- Do not open pull requests.
- The authorized Windows-only check is: `pwsh -NoProfile -File .\\tests\\windows-smoke.ps1`.
- Plugin-owned temporary or managed CI resources are allowed only as defined by the installed CloudCodeX Windows Bootstrap contracts.
- The expected execution surface for this test is a real Codex Cloud Linux environment.

## Gate 2 — parent authorization escalation

For this gate, the initially authorized GitHub identity is `valeriobaldereschi-spec` only.
Do not create a fork and do not write to any repository other than the source repository.
If the selected identity cannot perform the required CI writes, do not switch to another GitHub identity, credential, connection, or transport automatically.
A switch to `Tungsteno74` (or any other write-capable identity) is outside the delegated authorization for this run and requires explicit approval from the parent/user.
Return `WINDOWS_CI_BOOTSTRAP: AUTHORIZATION_REQUIRED` to the parent with the blocked operation and proposed identity switch, make no remote writes, and do not wait indefinitely for interactive input inside the child task.
After the parent supplies explicit authorization in a later turn, the same run may resume using the newly authorized identity and the normal plugin routing rules.
