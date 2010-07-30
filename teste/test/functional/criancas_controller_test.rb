require 'test_helper'

class CriancasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:criancas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crianca" do
    assert_difference('Crianca.count') do
      post :create, :crianca => { }
    end

    assert_redirected_to crianca_path(assigns(:crianca))
  end

  test "should show crianca" do
    get :show, :id => criancas(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => criancas(:one).id
    assert_response :success
  end

  test "should update crianca" do
    put :update, :id => criancas(:one).id, :crianca => { }
    assert_redirected_to crianca_path(assigns(:crianca))
  end

  test "should destroy crianca" do
    assert_difference('Crianca.count', -1) do
      delete :destroy, :id => criancas(:one).id
    end

    assert_redirected_to criancas_path
  end
end
