import pytest
from playwright.sync_api import Page, expect


@pytest.fixture(scope="function", autouse=True)
def before_each_after_each(page: Page, context):
    # not quite clear to me why this is not printed

    print("beforeEach")
    # Go to the starting url before each test.
    page.goto("https://playwright.dev/")
    yield
    print("afterEach")


def test_main_navigation(page: Page):
    # Assertions use the expect API.
    expect(page).to_have_url("https://playwright.dev/")


def test_main_navigation4(page: Page):
    # Assertions use the expect API.
    expect(page).to_have_url("https://playwjright.dev/")


def test_main_navigation2(page: Page):
    # Assertions use the expect API.
    expect(page).to_have_url("https://playwright.dev/")


def test_main_navigation3(page: Page):
    # Assertions use the expect API.
    expect(page).to_have_url("https://playwright.dev/")


def test_main_navigation5(page: Page):
    # Assertions use the expect API.
    expect(page).to_have_url("https://playwjright.dev/")
