require 'test_helper'

class HackathonBControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hackathon_b_index_url
    assert_response :success
  end

end
