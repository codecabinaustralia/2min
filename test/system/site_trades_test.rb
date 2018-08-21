require "application_system_test_case"

class SiteTradesTest < ApplicationSystemTestCase
  setup do
    @site_trade = site_trades(:one)
  end

  test "visiting the index" do
    visit site_trades_url
    assert_selector "h1", text: "Site Trades"
  end

  test "creating a Site trade" do
    visit site_trades_url
    click_on "New Site Trade"

    fill_in "Site", with: @site_trade.site_id
    fill_in "Trade", with: @site_trade.trade_id
    click_on "Create Site trade"

    assert_text "Site trade was successfully created"
    click_on "Back"
  end

  test "updating a Site trade" do
    visit site_trades_url
    click_on "Edit", match: :first

    fill_in "Site", with: @site_trade.site_id
    fill_in "Trade", with: @site_trade.trade_id
    click_on "Update Site trade"

    assert_text "Site trade was successfully updated"
    click_on "Back"
  end

  test "destroying a Site trade" do
    visit site_trades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Site trade was successfully destroyed"
  end
end
