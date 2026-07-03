# Security Policy

This repository automates the installation of scientific software on the ilifu
HPC cluster. It runs with administrative privileges over a shared `/software`
tree, so the security-relevant surface is mainly:

- **Secrets committed to the repo** (credentials, tokens, private keys).
- **Supply-chain / checksum integrity** — a task that downloads software without
  a correct `sha256` checksum, or a tampered upstream URL.
- **File permissions** — tasks that create world-writable paths on the shared
  tree.

## Reporting a vulnerability

**Please do not open a public issue for security problems.**

Report privately using GitHub's **"Report a vulnerability"** button under the
repository's **Security ▸ Advisories** tab
(<https://github.com/ilifu/software/security/advisories/new>). This opens a
private advisory visible only to the maintainers.

> Maintainers: this requires **Private Vulnerability Reporting** to be enabled
> in **Settings ▸ Code security and analysis**.

Please include, where possible:

- the affected file(s) and task/tag,
- a description of the issue and its impact,
- steps to reproduce or a proof of concept.

We aim to acknowledge reports within a few working days and will coordinate a
fix and disclosure timeline with you.

## Supported versions

This is a rolling operational repository with a single active line on the
`master` branch; fixes are applied to `master`. There are no separately
maintained release branches.

## Handling secrets

Never commit credentials, tokens, or private keys. Configuration that varies by
site lives in `ansible/group_vars/all`; keep any sensitive values out of the
repository (use Ansible Vault or an out-of-band mechanism). If you discover a
committed secret, report it privately as above so it can be rotated and purged
from history.
