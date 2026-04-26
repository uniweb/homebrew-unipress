# homebrew-unipress

[Homebrew](https://brew.sh) tap for [unipress](https://github.com/uniweb/unipress) — the CLI that compiles a directory of markdown into a typeset document (PDF, EPUB, DOCX, XLSX, Paged.js HTML, Typst source) using a Uniweb foundation.

## Install

```bash
brew install uniweb/unipress/unipress
```

That's it. `unipress` is now on your `PATH`.

If you'd rather tap first (so future installs from this tap are shorter):

```bash
brew tap uniweb/unipress
brew install unipress
```

## Update

```bash
brew upgrade unipress
```

## Uninstall

```bash
brew uninstall unipress
brew untap uniweb/unipress    # optional
```

## Supported platforms

| Platform | Architecture | Status |
|---|---|---|
| macOS | Apple Silicon (arm64) | ✅ signed + notarized |
| Linux | x86_64 | ✅ unsigned (Linux convention) |
| macOS | Intel (x86_64) | ❌ not yet — open an issue if you need it |
| Linux | aarch64 | ❌ not yet — open an issue if you need it |
| Windows | any | Use the `.exe` from the [GitHub Release page](https://github.com/uniweb/unipress/releases/latest) instead — Homebrew is macOS/Linux only |

## How updates land here

This tap is updated automatically when a new unipress version is released. Each release of unipress at `https://github.com/uniweb/unipress/releases` triggers a CI step that bumps `Formula/unipress.rb` with the new version number and SHA-256 checksums. Manual edits aren't expected.

## Verify the binary

The Mac binary is signed with the Proximify Inc. Developer ID and Apple-notarized. Homebrew downloads from the official GitHub Release and verifies the SHA-256 checksum before installing.

After install, you can independently verify:

```bash
codesign -dv "$(which unipress)"
# Authority=Developer ID Application: Proximify Inc. (Q3NAYGQX43)
```

## Issues

Tap-specific bugs (formula issues, install failures): [open an issue here](https://github.com/uniweb/homebrew-unipress/issues).

Bugs in unipress itself (compile failures, foundation issues): [open an issue on the main repo](https://github.com/uniweb/unipress/issues).

## License

The tap formula is Apache-2.0, matching unipress itself.
