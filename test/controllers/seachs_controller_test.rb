require 'test_helper'

class SeachsControllerTest < ActionDispatch::IntegrationTest
  test "should get seach" do
    get seachs_seach_url
    assert_response :success
  end

end
