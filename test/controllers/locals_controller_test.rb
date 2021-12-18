require "test_helper"

class LocalsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get locals_new_url
    assert_response :success
  end
end
