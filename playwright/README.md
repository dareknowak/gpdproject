# Playwright suite

This folder contains the Playwright Test version of the diki.pl check. It launches Chromium, accepts the Cookiebot consent prompt when present, searches for **ruffle**, and checks for the Polish translation **mankiet**.

## Requirements

- Node.js 18 or newer (includes npm and npx)

## Install

From this folder:

```bash
npm install
npx playwright install chromium
```

## Run

Run headlessly:

```bash
npm test
```

Open a visible browser:

```bash
npm run test:headed
```

The headed run moves quickly and closes the browser when the test finishes. To inspect it step by step, run:

```bash
npx playwright test --debug
```

Playwright Inspector opens before the test. Use **Step over** to advance one action at a time or **Resume** to let it finish.

## Files

- `tests/diki.spec.js` — the browser scenario
- `playwright.config.js` — test discovery, Chromium project, and trace settings
- `package.json` and `package-lock.json` — Node.js dependencies and scripts

Playwright downloads and manages its own Chromium browser; ChromeDriver is not required.
