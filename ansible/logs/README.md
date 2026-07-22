# Playbook logs

`ansible.cfg` sets `log_path = ./logs/ansible.log`, so every run from `ansible/`
appends here. The contents are gitignored; this directory is tracked only so
that ansible has somewhere to write — it warns and disables logging if the
directory is missing.

## Things to know

- **It appends, and nothing rotates it.** A full container build logs a lot. Add
  a logrotate rule if this becomes a problem:

  ```
  /path/to/repo/ansible/logs/ansible.log {
      weekly
      rotate 8
      compress
      missingok
      notifempty
      copytruncate
  }
  ```

- **Treat it as sensitive.** Task output lands here verbatim. Ansible honours
  `no_log: true`, but anything else a module prints — paths, hostnames, package
  URLs, command output — is captured in the clear.

- **It depends on the working directory.** The path is relative, so it only
  resolves as intended when playbooks are run from `ansible/`. That is already
  required for `ansible.cfg` itself to be discovered.

- **To send a run somewhere else**, override per invocation:

  ```bash
  ANSIBLE_LOG_PATH=/tmp/rstudio-build.log ansible-playbook site.yaml -t RStudio,...
  ```

  This is useful for keeping a long container build's output in its own file.
