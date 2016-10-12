require 'test_helper'

class HospicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hospice = hospices(:one)
  end

  test "should get index" do
    get hospices_url
    assert_response :success
  end

  test "should get new" do
    get new_hospice_url
    assert_response :success
  end

  test "should create hospice" do
    assert_difference('Hospice.count') do
      post hospices_url, params: { hospice: { address1: @hospice.address1, address2: @hospice.address2, bed_owner: @hospice.bed_owner, city: @hospice.city, description: @hospice.description, fax: @hospice.fax, main_phone: @hospice.main_phone, name: @hospice.name, referral_phone: @hospice.referral_phone, state: @hospice.state, zipcode: @hospice.zipcode } }
    end

    assert_redirected_to hospice_url(Hospice.last)
  end

  test "should show hospice" do
    get hospice_url(@hospice)
    assert_response :success
  end

  test "should get edit" do
    get edit_hospice_url(@hospice)
    assert_response :success
  end

  test "should update hospice" do
    patch hospice_url(@hospice), params: { hospice: { address1: @hospice.address1, address2: @hospice.address2, bed_owner: @hospice.bed_owner, city: @hospice.city, description: @hospice.description, fax: @hospice.fax, main_phone: @hospice.main_phone, name: @hospice.name, referral_phone: @hospice.referral_phone, state: @hospice.state, zipcode: @hospice.zipcode } }
    assert_redirected_to hospice_url(@hospice)
  end

  test "should destroy hospice" do
    assert_difference('Hospice.count', -1) do
      delete hospice_url(@hospice)
    end

    assert_redirected_to hospices_url
  end
end
