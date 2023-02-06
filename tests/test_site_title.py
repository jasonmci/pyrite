import re
from playwright.sync_api import Page, expect

def test_home_page_has_title(page: Page):
    page.goto('https://automationintesting.online')
    expect(page).to_have_title(re.compile("Restful-booker-platform demo"))
