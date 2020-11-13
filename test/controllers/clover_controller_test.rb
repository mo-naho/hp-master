require 'test_helper'

class CloverControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clover_index_url
    assert_response :success
  end

end
