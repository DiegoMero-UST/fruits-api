require "test_helper"

class Api::FruitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_fruits_index_url
    assert_response :success
  end
end
