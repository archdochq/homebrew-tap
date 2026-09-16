# homebrew-tap

Homebrew casks for [ollieread](https://github.com/ollieread) projects, on
macOS and Linux.

## Using the tap

Add the tap once, then install anything in it by name:

```
brew tap ollieread/tap
brew install <name>
```

`brew search ollieread/tap/` lists everything the tap provides, and
`brew update` picks up new releases.

Installing without tapping first also works, using the fully qualified name:

```
brew install ollieread/tap/<name>
```

The casks are maintained by GoReleaser from each project's release workflow.
Do not edit them by hand: the next release overwrites the change.

## ArchDoc

A CLI that manages a specification repository of RFCs, ADRs, spec pages and
refs. See [ollieread/archdoc](https://github.com/ollieread/archdoc).

```
brew install ollieread/tap/archdoc
```
