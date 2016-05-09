require 'test_helper'

class MaquinasControllerTest < ActionController::TestCase
  setup do
    @maquina = maquinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maquinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maquina" do
    assert_difference('Maquina.count') do
      post :create, maquina: { hostname: @maquina.hostname, mac: @maquina.mac, marca: @maquina.marca, modelo: @maquina.modelo, observacao: @maquina.observacao, part_number: @maquina.part_number, serial: @maquina.serial, sistema_operacional: @maquina.sistema_operacional, site: @maquina.site, status: @maquina.status, usuario_id: @maquina.usuario_id }
    end

    assert_redirected_to maquina_path(assigns(:maquina))
  end

  test "should show maquina" do
    get :show, id: @maquina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maquina
    assert_response :success
  end

  test "should update maquina" do
    patch :update, id: @maquina, maquina: { hostname: @maquina.hostname, mac: @maquina.mac, marca: @maquina.marca, modelo: @maquina.modelo, observacao: @maquina.observacao, part_number: @maquina.part_number, serial: @maquina.serial, sistema_operacional: @maquina.sistema_operacional, site: @maquina.site, status: @maquina.status, usuario_id: @maquina.usuario_id }
    assert_redirected_to maquina_path(assigns(:maquina))
  end

  test "should destroy maquina" do
    assert_difference('Maquina.count', -1) do
      delete :destroy, id: @maquina
    end

    assert_redirected_to maquinas_path
  end
end
