# Homebrew tap

Homebrew formulae for tools maintained by [iktakahiro](https://github.com/iktakahiro).

## Calendarpit

A local Google Calendar-compatible API and OAuth server for development and repeatable tests.

```sh
brew install iktakahiro/tap/calendarpit
calendarpit serve
```

Open http://127.0.0.1:4173. Run Calendarpit from your project directory; the default database is `.calendarpit/calendarpit.sqlite` there. Use `calendarpit serve --database :memory:` for a disposable session.

The formula installs a checksummed standalone executable for macOS or Linux on arm64 or x86-64. No separate Node.js or Bun runtime is required.

```sh
brew update
brew upgrade iktakahiro/tap/calendarpit
```

See [Calendarpit](https://github.com/iktakahiro/calendarpit) for documentation, releases, and issues.
