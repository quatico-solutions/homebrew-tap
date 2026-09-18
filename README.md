# Quatico Homebrew tap

Formulae for Quatico's CLIs. This repository holds formula definitions only — no CLI source. Each formula points at the file in the repository that owns it.

## Install

    brew install quatico-solutions/tap/bb

Use the fully qualified name, and do **not** run `brew tap` first.

That one command taps this repository, trusts the formula and installs, in that order. Tapping first and then installing a short `bb` does not work: Homebrew requires non-official taps to be trusted (since 6.0) and auto-trusts only a fully qualified name — `Utils.full_name?` is "exactly two slashes", so `bb` is skipped and the install is refused with `Refusing to load formula … from untrusted tap`. A bare `bb` also matches an unrelated cask.

If you hit that refusal, run

    brew trust --formula quatico-solutions/tap/bb

and install again. Trust the one formula rather than the whole tap — whole-tap trust also covers every formula added here later.

## Formulae

| Formula | CLI | Source |
|---|---|---|
| `bb` | Bitbucket Cloud CLI | [`quatico-solutions/agent-skills`](https://github.com/quatico-solutions/agent-skills) |

Version bumps arrive as automated pull requests from the source repository's release pipeline. Do not edit `url` or `sha256` by hand.
