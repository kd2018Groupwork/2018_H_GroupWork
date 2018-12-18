require 'test_helper'

class RateControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get rate_create_url
    assert_response :success
  end

  test "should get destroy" do
    get rate_destroy_url
    assert_response :success
  end

end
