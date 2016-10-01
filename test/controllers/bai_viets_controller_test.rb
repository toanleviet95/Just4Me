require 'test_helper'

class BaiVietsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bai_viets_index_url
    assert_response :success
  end

end
