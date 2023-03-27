require "test_helper"

class Public::MenusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_menus_index_url
    assert_response :success
  end

  test "should get special" do
    get public_menus_special_url
    assert_response :success
  end

  test "should get food" do
    get public_menus_food_url
    assert_response :success
  end

  test "should get dessert" do
    get public_menus_dessert_url
    assert_response :success
  end

  test "should get drink" do
    get public_menus_drink_url
    assert_response :success
  end
end
