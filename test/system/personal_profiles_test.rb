require "application_system_test_case"

class PersonalProfilesTest < ApplicationSystemTestCase
  setup do
    @personal_profile = personal_profiles(:one)
  end

  test "visiting the index" do
    visit personal_profiles_url
    assert_selector "h1", text: "Personal Profiles"
  end

  test "creating a Personal profile" do
    visit personal_profiles_url
    click_on "New Personal Profile"

    fill_in "Bio", with: @personal_profile.bio
    fill_in "Full Name", with: @personal_profile.full_name
    click_on "Create Personal profile"

    assert_text "Personal profile was successfully created"
    click_on "Back"
  end

  test "updating a Personal profile" do
    visit personal_profiles_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @personal_profile.bio
    fill_in "Full Name", with: @personal_profile.full_name
    click_on "Update Personal profile"

    assert_text "Personal profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Personal profile" do
    visit personal_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Personal profile was successfully destroyed"
  end
end
