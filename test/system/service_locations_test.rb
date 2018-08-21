require "application_system_test_case"

class ServiceLocationsTest < ApplicationSystemTestCase
  setup do
    @service_location = service_locations(:one)
  end

  test "visiting the index" do
    visit service_locations_url
    assert_selector "h1", text: "Service Locations"
  end

  test "creating a Service location" do
    visit service_locations_url
    click_on "New Service Location"

    fill_in "City", with: @service_location.city
    click_on "Create Service location"

    assert_text "Service location was successfully created"
    click_on "Back"
  end

  test "updating a Service location" do
    visit service_locations_url
    click_on "Edit", match: :first

    fill_in "City", with: @service_location.city
    click_on "Update Service location"

    assert_text "Service location was successfully updated"
    click_on "Back"
  end

  test "destroying a Service location" do
    visit service_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Service location was successfully destroyed"
  end
end
