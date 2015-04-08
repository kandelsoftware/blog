require 'test_helper'

class DescuentosControllerTest < ActionController::TestCase
  setup do
    @descuento = descuentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descuentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create descuento" do
    assert_difference('Descuento.count') do
      post :create, descuento: { apellidos: @descuento.apellidos, email: @descuento.email, fecha: @descuento.fecha, hora: @descuento.hora, menu: @descuento.menu, nombre: @descuento.nombre, persona: @descuento.persona, telefono: @descuento.telefono }
    end

    assert_redirected_to descuento_path(assigns(:descuento))
  end

  test "should show descuento" do
    get :show, id: @descuento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @descuento
    assert_response :success
  end

  test "should update descuento" do
    put :update, id: @descuento, descuento: { apellidos: @descuento.apellidos, email: @descuento.email, fecha: @descuento.fecha, hora: @descuento.hora, menu: @descuento.menu, nombre: @descuento.nombre, persona: @descuento.persona, telefono: @descuento.telefono }
    assert_redirected_to descuento_path(assigns(:descuento))
  end

  test "should destroy descuento" do
    assert_difference('Descuento.count', -1) do
      delete :destroy, id: @descuento
    end

    assert_redirected_to descuentos_path
  end
end
