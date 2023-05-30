# night.zig

Simple tool that just install & update `zig` nightly.

### Usage

```bash
USAGE:
    nz <SUBCOMMAND>

SUBCOMMANDS:
    update            Update both zig nightly toolchain & nz itself
    update nightly    Update zig nightly toolchain only
    update nz         Update nz itself only
    cleanup           Remove outdated nightly toolchains
    version           Show nz version info
    help              Show this message
```

### Dependencies

* `bash`
* `curl`
* `jq`
* `basename`
* `tar`
* `find`
* `readlink`

You will mostly have everything preinstalled except `jq`.

### Installation

Run this in terminal:

```bash
curl "https://raw.githubusercontent.com/jsomedon/night.zig/main/nz" | bash -s -- _bootstrap
```

You can also optionally install shell completion scripts, you can find them under `completions` folder. For now only bash completion script is implemented.

##### Bash (using bash-completion on Linux)

On Linux, completion scripts for `bash-completion` are commonly stored in `/etc/bash_completion.d/` for system-wide commands, but can be stored in `~/.local/share/bash-completion/completions` for user-specific commands. Install `bash-completion` package with your distributions' package manager first -- packages' name might vary, then:

```bash
mkdir -p ~/.local/share/bash-completion/completions
mv nz.comp.bash ~/.local/share/bash-completion/completions/
```

You may have to log out and log back in to your shell session for the changes to take effect.

##### Bash (using bash-completion on macOS/Homebrew)

On macOS, homebrew stores `bash-completion` scripts within the homebrew directory. Install `bash-completion` brew formula, then put `nz.comp.bash` into `$(brew --prefix)/etc/bash_completion.d`:

```bash
brew install bash-completion # or bash-completion@2 if your bash version is 4.2+
mkdir -p $(brew --prefix)/etc/bash_completion.d
mv nz.comp.bash  $(brew --prefix)/etc/bash_completion.d/
```

##### Bash (not using bash-completion)

For quick installation, you can simply download the `nz.comp.bash` script somewhere on your machine, then `source` the script in your bash profile file.

### Uninstallation

Both `nz` and nightly bins are installed in `~/.night.zig/`, so just remove that folder:

```bash
rm -rf ~/.night.zig
```

If you installed shell completion scripts, remove them from their respective dirs as well.

### Rant

I just started looking into `zig` yesterday, and I couldn't believe fine folks of `zig` community are manually grabbing the nightly bins without any tools? So here we have this one.

I didn't fully test architecture & os detection logic, only on `x86_64-linux` and `aarch64-macos`.

I may rewrite this little tool in `zig` when I get comfortable enough with `zig`, so that you don't need dependencies and what not. But no promise on that.

### License

MIT
