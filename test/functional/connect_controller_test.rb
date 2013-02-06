require 'test_helper'

class ConnectControllerTest < ActionController::TestCase
  test "should get all" do
    get :all
    assert_response :success
  end

  test "should get userdetail" do
    get :userdetail
    assert_response :success
  end

end
