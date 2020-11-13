require 'test_helper'

class Hackathon2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hackathon2_index_url
    assert_response :success
  end

end
