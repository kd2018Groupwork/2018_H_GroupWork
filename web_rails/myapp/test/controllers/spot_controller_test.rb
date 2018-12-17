require 'test_helper'

class SpotControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get spot_new_url
    assert_response :success
  end

  test "should get create" do
    get spot_create_url
    assert_response :success
  end

  test "should get complete" do
    get spot_complete_url
    assert_response :success
  end

end
