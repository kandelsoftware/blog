require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get map" do
    get :map
    assert_response :success
  end

  test "should get menu" do
    get :menu
    assert_response :success
  end

end
