require 'test_helper'

class HackathonControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hackathon_index_url
    assert_response :success
  end

end
