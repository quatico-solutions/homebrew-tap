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

## Formulae

| Formula | CLI | Source |
|---|---|---|
| `quatico-bb` | Bitbucket Cloud CLI | [`quatico-solutions/agent-skills`](https://github.com/quatico-solutions/agent-skills) |

Version bumps arrive as automated pull requests from the source repository's release pipeline. Do not edit `url` or `sha256` by hand.
