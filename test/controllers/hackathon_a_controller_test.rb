require 'test_helper'

class HackathonAControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hackathon_a_index_url
    assert_response :success
  end

end
