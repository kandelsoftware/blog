require 'test_helper'

class HimalayasControllerTest < ActionController::TestCase
  setup do
    @himalaya = himalayas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:himalayas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create himalaya" do
    assert_difference('Himalaya.count') do
      post :create, himalaya: { persona: @himalaya.persona, email: @himalaya.email, fecha: @himalaya.fecha, hora: @himalaya.hora, menu: @himalaya.menu, nombre: @himalaya.nombre, telefono: @himalaya.telefono }
    end

    assert_redirected_to himalaya_path(assigns(:himalaya))
  end

  test "should show himalaya" do
    get :show, id: @himalaya
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @himalaya
    assert_response :success
  end

  test "should update himalaya" do
    put :update, id: @himalaya, himalaya: { persona: @himalaya.persona, email: @himalaya.email, fecha: @himalaya.fecha, hora: @himalaya.hora, menu: @himalaya.menu, nombre: @himalaya.nombre, telefono: @himalaya.telefono }
    assert_redirected_to himalaya_path(assigns(:himalaya))
  end

  test "should destroy himalaya" do
    assert_difference('Himalaya.count', -1) do
      delete :destroy, id: @himalaya
    end

    assert_redirected_to himalayas_path
  end
end
