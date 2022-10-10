require "test_helper"

class ShokudouShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shokudou_shops_index_url
    assert_response :success
  end

  test "should get show" do
    get shokudou_shops_show_url
    assert_response :success
  end
end
