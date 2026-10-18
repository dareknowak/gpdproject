# diki.pl translation browser checks

This repository contains two independent browser checks for the same diki.pl search flow. The Ruby suite uses Cucumber, Capybara, and Selenium. The Playwright suite uses Playwright Test. Each implementation is kept in its own folder so you can install and run either one without mixing dependencies.

Both suites open diki.pl, accept the Cookiebot prompt when it appears, search for **ruffle**, and check that **mankiet** appears in the results.

## Choose a runner

| Runner | Project folder | Setup guide | Run from that folder |
| --- | --- | --- | --- |
| Playwright | [`playwright/`](playwright/) | [Playwright guide](playwright/README.md) | `npm test` |
| Ruby | [`ruby/`](ruby/) | [Ruby guide](ruby/README.md) | `bundle exec cucumber` |

## Playwright quick start

```bash
cd playwright
npm install
npx playwright install chromium
npm test
```

To watch the browser step by step, use `npx playwright test --debug` from `playwright/`. The Playwright Inspector lets you step through the browser actions.

## Ruby quick start

```bash
cd ruby
bundle install
bundle exec cucumber
```

See the folder guides for requirements, headed browser options, and troubleshooting.
