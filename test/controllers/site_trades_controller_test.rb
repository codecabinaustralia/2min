require 'test_helper'

class SiteTradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site_trade = site_trades(:one)
  end

  test "should get index" do
    get site_trades_url
    assert_response :success
  end

  test "should get new" do
    get new_site_trade_url
    assert_response :success
  end

  test "should create site_trade" do
    assert_difference('SiteTrade.count') do
      post site_trades_url, params: { site_trade: { site_id: @site_trade.site_id, trade_id: @site_trade.trade_id } }
    end

    assert_redirected_to site_trade_url(SiteTrade.last)
  end

  test "should show site_trade" do
    get site_trade_url(@site_trade)
    assert_response :success
  end

  test "should get edit" do
    get edit_site_trade_url(@site_trade)
    assert_response :success
  end

  test "should update site_trade" do
    patch site_trade_url(@site_trade), params: { site_trade: { site_id: @site_trade.site_id, trade_id: @site_trade.trade_id } }
    assert_redirected_to site_trade_url(@site_trade)
  end

  test "should destroy site_trade" do
    assert_difference('SiteTrade.count', -1) do
      delete site_trade_url(@site_trade)
    end

    assert_redirected_to site_trades_url
  end
end
