require "application_system_test_case"

class AccreditationAndLicencesTest < ApplicationSystemTestCase
  setup do
    @accreditation_and_licence = accreditation_and_licences(:one)
  end

  test "visiting the index" do
    visit accreditation_and_licences_url
    assert_selector "h1", text: "Accreditation And Licences"
  end

  test "creating a Accreditation and licence" do
    visit accreditation_and_licences_url
    click_on "New Accreditation And Licence"

    fill_in "Name", with: @accreditation_and_licence.name
    fill_in "Reference Number", with: @accreditation_and_licence.reference_number
    click_on "Create Accreditation and licence"

    assert_text "Accreditation and licence was successfully created"
    click_on "Back"
  end

  test "updating a Accreditation and licence" do
    visit accreditation_and_licences_url
    click_on "Edit", match: :first

    fill_in "Name", with: @accreditation_and_licence.name
    fill_in "Reference Number", with: @accreditation_and_licence.reference_number
    click_on "Update Accreditation and licence"

    assert_text "Accreditation and licence was successfully updated"
    click_on "Back"
  end

  test "destroying a Accreditation and licence" do
    visit accreditation_and_licences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accreditation and licence was successfully destroyed"
  end
end
