require 'test_helper'

class GruposControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo" do
    assert_difference('Grupo.count') do
      post :create, :grupo => { }
    end

    assert_redirected_to grupo_path(assigns(:grupo))
  end

  test "should show grupo" do
    get :show, :id => grupos(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => grupos(:one).id
    assert_response :success
  end

  test "should update grupo" do
    put :update, :id => grupos(:one).id, :grupo => { }
    assert_redirected_to grupo_path(assigns(:grupo))
  end

  test "should destroy grupo" do
    assert_difference('Grupo.count', -1) do
      delete :destroy, :id => grupos(:one).id
    end

    assert_redirected_to grupos_path
  end
end
