require 'test_helper'

class PurchasedItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchased_item = purchased_items(:one)
  end

  test "should get index" do
    get purchased_items_url
    assert_response :success
  end

  test "should get new" do
    get new_purchased_item_url
    assert_response :success
  end

  test "should create purchased_item" do
    assert_difference('PurchasedItem.count') do
      post purchased_items_url, params: { purchased_item: { item_id: @purchased_item.item_id, sales_order_id: @purchased_item.sales_order_id, serial_number: @purchased_item.serial_number } }
    end

    assert_redirected_to purchased_item_url(PurchasedItem.last)
  end

  test "should show purchased_item" do
    get purchased_item_url(@purchased_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchased_item_url(@purchased_item)
    assert_response :success
  end

  test "should update purchased_item" do
    patch purchased_item_url(@purchased_item), params: { purchased_item: { item_id: @purchased_item.item_id, sales_order_id: @purchased_item.sales_order_id, serial_number: @purchased_item.serial_number } }
    assert_redirected_to purchased_item_url(@purchased_item)
  end

  test "should destroy purchased_item" do
    assert_difference('PurchasedItem.count', -1) do
      delete purchased_item_url(@purchased_item)
    end

    assert_redirected_to purchased_items_url
  end
end
