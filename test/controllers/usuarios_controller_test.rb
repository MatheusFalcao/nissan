require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { cpf: @usuario.cpf, data_nascimento: @usuario.data_nascimento, email: @usuario.email, funcao: @usuario.funcao, gestor: @usuario.gestor, gestor: @usuario.gestor, nissan_id: @usuario.nissan_id, nome: @usuario.nome, nome_empresa: @usuario.nome_empresa, qcn: @usuario.qcn, renault_id: @usuario.renault_id, rg: @usuario.rg, setor: @usuario.setor, site: @usuario.site, site: @usuario.site, status: @usuario.status, tipo: @usuario.tipo }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    patch :update, id: @usuario, usuario: { cpf: @usuario.cpf, data_nascimento: @usuario.data_nascimento, email: @usuario.email, funcao: @usuario.funcao, gestor: @usuario.gestor, gestor: @usuario.gestor, nissan_id: @usuario.nissan_id, nome: @usuario.nome, nome_empresa: @usuario.nome_empresa, qcn: @usuario.qcn, renault_id: @usuario.renault_id, rg: @usuario.rg, setor: @usuario.setor, site: @usuario.site, site: @usuario.site, status: @usuario.status, tipo: @usuario.tipo }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_path
  end
end
