require "application_system_test_case"

class SiteServicesTest < ApplicationSystemTestCase
  setup do
    @site_service = site_services(:one)
  end

  test "visiting the index" do
    visit site_services_url
    assert_selector "h1", text: "Site Services"
  end

  test "creating a Site service" do
    visit site_services_url
    click_on "New Site Service"

    fill_in "Service", with: @site_service.service_id
    fill_in "Site", with: @site_service.site_id
    click_on "Create Site service"

    assert_text "Site service was successfully created"
    click_on "Back"
  end

  test "updating a Site service" do
    visit site_services_url
    click_on "Edit", match: :first

    fill_in "Service", with: @site_service.service_id
    fill_in "Site", with: @site_service.site_id
    click_on "Update Site service"

    assert_text "Site service was successfully updated"
    click_on "Back"
  end

  test "destroying a Site service" do
    visit site_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Site service was successfully destroyed"
  end
end
