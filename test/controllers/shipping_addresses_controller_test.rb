require 'test_helper'

class ShippingAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipping_address = shipping_addresses(:one)
  end

  test "should get index" do
    get shipping_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_shipping_address_url
    assert_response :success
  end

  test "should create shipping_address" do
    assert_difference('ShippingAddress.count') do
      post shipping_addresses_url, params: { shipping_address: { address_1: @shipping_address.address_1, address_2: @shipping_address.address_2, address_alias: @shipping_address.address_alias, address_city: @shipping_address.address_city, address_country: @shipping_address.address_country, address_state: @shipping_address.address_state, address_type: @shipping_address.address_type, address_zip: @shipping_address.address_zip, customer_id: @shipping_address.customer_id } }
    end

    assert_redirected_to shipping_address_url(ShippingAddress.last)
  end

  test "should show shipping_address" do
    get shipping_address_url(@shipping_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipping_address_url(@shipping_address)
    assert_response :success
  end

  test "should update shipping_address" do
    patch shipping_address_url(@shipping_address), params: { shipping_address: { address_1: @shipping_address.address_1, address_2: @shipping_address.address_2, address_alias: @shipping_address.address_alias, address_city: @shipping_address.address_city, address_country: @shipping_address.address_country, address_state: @shipping_address.address_state, address_type: @shipping_address.address_type, address_zip: @shipping_address.address_zip, customer_id: @shipping_address.customer_id } }
    assert_redirected_to shipping_address_url(@shipping_address)
  end

  test "should destroy shipping_address" do
    assert_difference('ShippingAddress.count', -1) do
      delete shipping_address_url(@shipping_address)
    end

    assert_redirected_to shipping_addresses_url
  end
end
