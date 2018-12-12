require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get search_search_url
    assert_response :success
  end

  test "should get search_result" do
    get search_search_result_url
    assert_response :success
  end

  test "should get search_detail" do
    get search_search_detail_url
    assert_response :success
  end

end
