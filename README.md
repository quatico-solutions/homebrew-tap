# Quatico Homebrew tap

Formulae for Quatico's CLIs. This repository holds formula definitions only — no CLI source. Each formula points at the file in the repository that owns it.

## Install

Trust the tap once, then install by the short name:

    brew tap quatico-solutions/tap
    brew trust --tap quatico-solutions/tap
    brew install quatico-bb

The `brew trust --tap` step is one-time and persists in `~/.homebrew/trust.json`;
future formulas in this tap are trusted automatically. After that,
`brew install quatico-bb`, `brew upgrade quatico-bb` and `brew outdated quatico-bb`
all work by the short name.

The fully qualified name also works and auto-taps + auto-trusts in one step:

    brew install quatico-solutions/tap/quatico-bb

(Do **not** use a bare `bb` — that name resolves to an unrelated cask in
homebrew-cask, an agent IDE from getbb.app.)

### Installed it as `bb` before the rename?

The formula was called `bb` until 2026-10-04. Move the installed keg to the new
name with two commands:

    brew trust --tap quatico-solutions/tap
    brew migrate quatico-solutions/tap/quatico-bb

`formula_renames.json` maps the old name to the new one, but `brew update` will
not do this for you if you installed by the fully qualified name, as these
instructions used to say. That install trusted only the formula
`quatico-solutions/tap/bb`, not the tap, so Homebrew refuses the renamed formula
as untrusted and skips the keg without a message. And use the full new name:
after trusting, a bare `brew migrate bb` picks the unrelated `bb` cask and does
nothing.

Afterwards `brew list` shows both `bb` and `quatico-bb`: Homebrew keeps
`Cellar/bb` as a symlink to the new keg. It is one install, not two.

## Formulae

| Formula | CLI | Source |
|---|---|---|
| `quatico-bb` | Bitbucket Cloud CLI | [`quatico-solutions/agent-skills`](https://github.com/quatico-solutions/agent-skills) |

Version bumps arrive as automated pull requests from the source repository's release pipeline. Do not edit `url` or `sha256` by hand.
