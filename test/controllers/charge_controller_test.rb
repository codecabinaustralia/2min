require 'test_helper'

class ChargeControllerTest < ActionDispatch::IntegrationTest
  test "should get payment_page" do
    get charge_payment_page_url
    assert_response :success
  end

  test "should get create_charge" do
    get charge_create_charge_url
    assert_response :success
  end

  test "should get thank_you" do
    get charge_thank_you_url
    assert_response :success
  end

end
