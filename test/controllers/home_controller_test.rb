require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get activity" do
    get home_activity_url
    assert_response :success
  end

  test "should get news" do
    get home_news_url
    assert_response :success
  end

end
