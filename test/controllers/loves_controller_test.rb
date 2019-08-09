require 'test_helper'

class LovesControllerTest < ActionDispatch::IntegrationTest
  test "should get check" do
    get loves_check_url
    assert_response :success
  end

end
