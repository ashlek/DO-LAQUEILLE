require 'test_helper'

class SpectateursControllerTest < ActionController::TestCase
  setup do
    @spectateur = spectateurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spectateurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spectateur" do
    assert_difference('Spectateur.count') do
      post :create, spectateur: { descripton: @spectateur.descripton, name: @spectateur.name }
    end

    assert_redirected_to spectateur_path(assigns(:spectateur))
  end

  test "should show spectateur" do
    get :show, id: @spectateur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spectateur
    assert_response :success
  end

  test "should update spectateur" do
    patch :update, id: @spectateur, spectateur: { descripton: @spectateur.descripton, name: @spectateur.name }
    assert_redirected_to spectateur_path(assigns(:spectateur))
  end

  test "should destroy spectateur" do
    assert_difference('Spectateur.count', -1) do
      delete :destroy, id: @spectateur
    end

    assert_redirected_to spectateurs_path
  end
end
