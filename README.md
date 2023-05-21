# night.zig

Simple tool that just install & update `zig` nightly.

### Usage

```bash
USAGE:
    nz <SUBCOMMAND>

SUBCOMMANDS:
    update    Update zig nightly toolchain & nz itself
    cleanup   Remove outdated nightly toolchains
    version   Show nz version info
    help      Show this message
```

### Dependencies

* `bash`
* `curl`
* `jq`
* `basename`
* `tar`

### Installation

Run this in terminal:

```bash
curl "https://raw.githubusercontent.com/jsomedon/night.zig/main/nz" | bash -s -- update
```

### Uninstallation

Both `nz` and nightly bins are installed in `~/.night.zig/`, so just remove that folder:

```bash
rm -rf ~/.night.zig
```

### Rant

I just started looking into `zig` yesterday, and I couldn't believe fine folks of `zig` community are manually grabbing the nightly bins without any tools? So here we have this one.

I didn't fully test architecture & os detection logic, only on `x86_64-linux` and `aarch64-macos`.

I may rewrite this little tool in `zig` when I get comfortable enough with `zig`, so that you don't need dependencies and what not. But no promise on that.

### License

MIT
