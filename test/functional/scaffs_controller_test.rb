require 'test_helper'

class ScaffsControllerTest < ActionController::TestCase
  setup do
    @scaff = scaffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scaffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scaff" do
    assert_difference('Scaff.count') do
      post :create, scaff: @scaff.attributes
    end

    assert_redirected_to scaff_path(assigns(:scaff))
  end

  test "should show scaff" do
    get :show, id: @scaff.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scaff.to_param
    assert_response :success
  end

  test "should update scaff" do
    put :update, id: @scaff.to_param, scaff: @scaff.attributes
    assert_redirected_to scaff_path(assigns(:scaff))
  end

  test "should destroy scaff" do
    assert_difference('Scaff.count', -1) do
      delete :destroy, id: @scaff.to_param
    end

    assert_redirected_to scaffs_path
  end
end
