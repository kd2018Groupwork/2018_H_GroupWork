require 'test_helper'

class IineControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get iine_create_url
    assert_response :success
  end

  test "should get destroy" do
    get iine_destroy_url
    assert_response :success
  end

end
