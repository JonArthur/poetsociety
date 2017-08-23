require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get users_view_url
    assert_response :success
  end

end
