require 'test_helper'

class SiteServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site_service = site_services(:one)
  end

  test "should get index" do
    get site_services_url
    assert_response :success
  end

  test "should get new" do
    get new_site_service_url
    assert_response :success
  end

  test "should create site_service" do
    assert_difference('SiteService.count') do
      post site_services_url, params: { site_service: { service_id: @site_service.service_id, site_id: @site_service.site_id } }
    end

    assert_redirected_to site_service_url(SiteService.last)
  end

  test "should show site_service" do
    get site_service_url(@site_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_site_service_url(@site_service)
    assert_response :success
  end

  test "should update site_service" do
    patch site_service_url(@site_service), params: { site_service: { service_id: @site_service.service_id, site_id: @site_service.site_id } }
    assert_redirected_to site_service_url(@site_service)
  end

  test "should destroy site_service" do
    assert_difference('SiteService.count', -1) do
      delete site_service_url(@site_service)
    end

    assert_redirected_to site_services_url
  end
end
