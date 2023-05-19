# night.zig

Simple tool that just install & update `zig` nightly.

### Usage

```bash
# prebuilt binary is fetched from https://ziglang.org/download/
# and placed into ~/.night.zig/
# and existing installation will be removed upon update
# and yeah it's that simple, just run `nz`
nz
```

### Dependencies

* `bash`
* `curl`
* `jq`
* `basename`
* `tar`

### Installation

```bash
# `nz` itself will be placed in ~/.night.zig/ too
curl "https://raw.githubusercontent.com/jsomedon/night.zig/main/nz" | bash
```

### Uninstallation

```bash
# Both `nz` and nightly bin are in ~/.night.zig/, so just remove that
rm -rf ~/.night.zig
```

### Rant

I just started looking into `zig` yesterday, and I couldn't believe fine folks of `zig` community are manually grabbing the nightly bin without any tools? So here we have this one.

I didn't fully test architecture & os detection logic, only on `x86_64-linux` and `aarch64-macos`.

I may rewrite this little tool in `zig` when I get comfortable enough with `zig`, so that you don't need dependencies and what not. But no guarantee.

### License

MIT
