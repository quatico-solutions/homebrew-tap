# Quatico Homebrew tap

Formulae for Quatico's CLIs. This repository holds formula definitions only — no CLI source. Each formula points at the file in the repository that owns it.

## Install

    brew install quatico-solutions/tap/bb

Use the fully qualified name. It taps this repository and installs in one command, and it cannot be confused with the unrelated `bb` cask in homebrew-cask.

Homebrew requires non-official taps to be trusted, since 6.0. A fully qualified install trusts the formula for you on current versions. Where it does not, run

    brew trust --formula quatico-solutions/tap/bb

and install again. Trust the one formula rather than the whole tap — whole-tap trust also covers every formula added here later.

## Formulae

| Formula | CLI | Source |
|---|---|---|
| `bb` | Bitbucket Cloud CLI | [`quatico-solutions/agent-skills`](https://github.com/quatico-solutions/agent-skills) |

Version bumps arrive as automated pull requests from the source repository's release pipeline. Do not edit `url` or `sha256` by hand.
