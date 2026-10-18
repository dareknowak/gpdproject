# Ruby suite

This folder preserves the original Cucumber, Capybara, and Selenium implementation of the diki.pl check. It accepts the Cookiebot prompt when present, searches for **ruffle**, and checks for **mankiet** in the results.

## Requirements

- Ruby 2.6 or newer
- Bundler
- Google Chrome
- A ChromeDriver compatible with the installed Chrome version

## Install

From this folder, install the Ruby gems:

```bash
bundle install
```

Make sure `chromedriver` is available on your `PATH`. If it is not, set `CHROMEDRIVER_PATH` to its location. For example:

```bash
export CHROMEDRIVER_PATH="$HOME/bin/chromedriver"
```

## Run

Run all scenarios:

```bash
bundle exec cucumber
```

Run the diki.pl scenario directly:

```bash
bundle exec cucumber features/open_navigate.feature
```

## Files

- `features/open_navigate.feature` — scenario description
- `features/step_definitions/web_steps.rb` — browser actions and assertions
- `features/support/env.rb` — Capybara and Selenium setup
- `Gemfile` and `Gemfile.lock` — Ruby dependencies

The Ruby implementation is retained as a separate reference runner. New browser automation can use the Playwright suite in the sibling `playwright/` folder.
