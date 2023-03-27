require "test_helper"

class Public::ReservesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get public_reserves_top_url
    assert_response :success
  end

  test "should get new" do
    get public_reserves_new_url
    assert_response :success
  end

  test "should get confirm" do
    get public_reserves_confirm_url
    assert_response :success
  end

  test "should get thanks" do
    get public_reserves_thanks_url
    assert_response :success
  end

  test "should get index" do
    get public_reserves_index_url
    assert_response :success
  end

  test "should get edit" do
    get public_reserves_edit_url
    assert_response :success
  end
end
