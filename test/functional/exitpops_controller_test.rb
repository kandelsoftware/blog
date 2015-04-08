require 'test_helper'

class ExitpopsControllerTest < ActionController::TestCase
  setup do
    @exitpop = exitpops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exitpops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exitpop" do
    assert_difference('Exitpop.count') do
      post :create, exitpop: { email: @exitpop.email, name: @exitpop.name }
    end

    assert_redirected_to exitpop_path(assigns(:exitpop))
  end

  test "should show exitpop" do
    get :show, id: @exitpop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exitpop
    assert_response :success
  end

  test "should update exitpop" do
    put :update, id: @exitpop, exitpop: { email: @exitpop.email, name: @exitpop.name }
    assert_redirected_to exitpop_path(assigns(:exitpop))
  end

  test "should destroy exitpop" do
    assert_difference('Exitpop.count', -1) do
      delete :destroy, id: @exitpop
    end

    assert_redirected_to exitpops_path
  end
end
