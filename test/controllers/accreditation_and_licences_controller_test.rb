require 'test_helper'

class AccreditationAndLicencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @accreditation_and_licence = accreditation_and_licences(:one)
  end

  test "should get index" do
    get accreditation_and_licences_url
    assert_response :success
  end

  test "should get new" do
    get new_accreditation_and_licence_url
    assert_response :success
  end

  test "should create accreditation_and_licence" do
    assert_difference('AccreditationAndLicence.count') do
      post accreditation_and_licences_url, params: { accreditation_and_licence: { name: @accreditation_and_licence.name, reference_number: @accreditation_and_licence.reference_number } }
    end

    assert_redirected_to accreditation_and_licence_url(AccreditationAndLicence.last)
  end

  test "should show accreditation_and_licence" do
    get accreditation_and_licence_url(@accreditation_and_licence)
    assert_response :success
  end

  test "should get edit" do
    get edit_accreditation_and_licence_url(@accreditation_and_licence)
    assert_response :success
  end

  test "should update accreditation_and_licence" do
    patch accreditation_and_licence_url(@accreditation_and_licence), params: { accreditation_and_licence: { name: @accreditation_and_licence.name, reference_number: @accreditation_and_licence.reference_number } }
    assert_redirected_to accreditation_and_licence_url(@accreditation_and_licence)
  end

  test "should destroy accreditation_and_licence" do
    assert_difference('AccreditationAndLicence.count', -1) do
      delete accreditation_and_licence_url(@accreditation_and_licence)
    end

    assert_redirected_to accreditation_and_licences_url
  end
end
