-- -*- lua -*-
help([[
This module configures rustup for use
]])
whatis("Keywords: rustup")
whatis("Description: Rustup")

setenv('CARGO_HOME', "{{ install_dir }}/.cargo")
setenv('RUSTUP_HOME', "{{ install_dir }}/.rustup")
prepend_path('PATH', "{{ install_dir }}/.rustup/bin")
prepend_path('PATH', "{{ install_dir }}/.cargo/bin")
