require 'test_helper'

class OfferControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get offer_index_url
    assert_response :success
  end

  test "should get confirm" do
    get offer_confirm_url
    assert_response :success
  end

  test "should get complete" do
    get offer_complete_url
    assert_response :success
  end

end
