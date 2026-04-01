# Automated test for diki.pl

Cucumber/Capybara/Selenium tests for diki.pl — searches for an English word and verifies the Polish translation appears in the results.

## What it does

1. Opens https://www.diki.pl in Chrome
2. Accepts the Cookiebot cookie consent popup ("Akceptuj wszystko")
3. Searches for the word **ruffle**
4. Asserts that **mankiet** appears somewhere on the results page

## Prerequisites

### Ruby

Uses the system Ruby (2.6+). No version manager required.

### ChromeDriver

ChromeDriver must match your installed Chrome version. Download the matching version from:
https://googlechromelabs.github.io/chrome-for-testing/

Place the binary at `~/bin/chromedriver` and make it executable:

```bash
mkdir -p ~/bin
cp /path/to/chromedriver ~/bin/chromedriver
chmod +x ~/bin/chromedriver
xattr -d com.apple.quarantine ~/bin/chromedriver  # remove macOS Gatekeeper block
```

### Gems

Install dependencies into the project's `vendor/bundle`:

```bash
bundle config --local force_ruby_platform true
bundle install --path vendor/bundle
```

## Running the tests

From the project root:

```bash
bundle exec cucumber
```

Run a specific feature file:

```bash
bundle exec cucumber features/open_navigate.feature
```

## Test environment

```
macOS (Apple Silicon / arm64)
Google Chrome 146.x
ChromeDriver 146.x (from Chrome for Testing)
Ruby 2.6.x (system)
cucumber 7.1.0
capybara 3.36.0
selenium-webdriver 4.1.0
```
