require 'test_helper'

class PlanningControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get planning_new_url
    assert_response :success
  end

  test "should get reference" do
    get planning_reference_url
    assert_response :success
  end

end
