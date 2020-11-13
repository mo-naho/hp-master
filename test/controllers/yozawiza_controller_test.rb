require 'test_helper'

class YozawizaControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get yozawiza_top_url
    assert_response :success
  end

  test "should get about" do
    get yozawiza_about_url
    assert_response :success
  end

  test "should get system" do
    get yozawiza_system_url
    assert_response :success
  end

  test "should get spec" do
    get yozawiza_spec_url
    assert_response :success
  end

  test "should get movie" do
    get yozawiza_movie_url
    assert_response :success
  end

end
