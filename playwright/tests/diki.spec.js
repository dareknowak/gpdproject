const { test, expect } = require('@playwright/test');

test('searches for ruffle and shows its Polish translation', async ({ page }) => {
  await page.goto('/');

  const acceptCookies = page.locator('#CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll');
  if (await acceptCookies.isVisible().catch(() => false)) {
    await acceptCookies.click();
  }

  const search = page.locator('input[name="q"]');
  await expect(search).toBeVisible();
  await search.fill('ruffle');
  await search.press('Enter');

  await expect(page.getByText('mankiet', { exact: false }).first()).toBeVisible();
});
