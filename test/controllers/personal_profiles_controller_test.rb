require 'test_helper'

class PersonalProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_profile = personal_profiles(:one)
  end

  test "should get index" do
    get personal_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_profile_url
    assert_response :success
  end

  test "should create personal_profile" do
    assert_difference('PersonalProfile.count') do
      post personal_profiles_url, params: { personal_profile: { bio: @personal_profile.bio, full_name: @personal_profile.full_name } }
    end

    assert_redirected_to personal_profile_url(PersonalProfile.last)
  end

  test "should show personal_profile" do
    get personal_profile_url(@personal_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_profile_url(@personal_profile)
    assert_response :success
  end

  test "should update personal_profile" do
    patch personal_profile_url(@personal_profile), params: { personal_profile: { bio: @personal_profile.bio, full_name: @personal_profile.full_name } }
    assert_redirected_to personal_profile_url(@personal_profile)
  end

  test "should destroy personal_profile" do
    assert_difference('PersonalProfile.count', -1) do
      delete personal_profile_url(@personal_profile)
    end

    assert_redirected_to personal_profiles_url
  end
end
