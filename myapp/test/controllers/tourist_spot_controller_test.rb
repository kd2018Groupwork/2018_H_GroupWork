require 'test_helper'

class TouristSpotControllerTest < ActionDispatch::IntegrationTest
  test "should get complete" do
    get tourist_spot_complete_url
    assert_response :success
  end

end
