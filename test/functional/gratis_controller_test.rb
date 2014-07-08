require 'test_helper'

class GratisControllerTest < ActionController::TestCase
  setup do
    @grati = gratis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gratis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grati" do
    assert_difference('Grati.count') do
      post :create, grati: { email: @grati.email }
    end

    assert_redirected_to grati_path(assigns(:grati))
  end

  test "should show grati" do
    get :show, id: @grati
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grati
    assert_response :success
  end

  test "should update grati" do
    put :update, id: @grati, grati: { email: @grati.email }
    assert_redirected_to grati_path(assigns(:grati))
  end

  test "should destroy grati" do
    assert_difference('Grati.count', -1) do
      delete :destroy, id: @grati
    end

    assert_redirected_to gratis_path
  end
end
