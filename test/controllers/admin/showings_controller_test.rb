require "test_helper"

class Admin::ShowingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    sign_in users(:danray)
    get admin_showings_url
    assert_response :success
  end
end
