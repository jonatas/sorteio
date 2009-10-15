require 'test_helper'

class BrindesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brindes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brinde" do
    assert_difference('Brinde.count') do
      post :create, :brinde => { }
    end

    assert_redirected_to brinde_path(assigns(:brinde))
  end

  test "should show brinde" do
    get :show, :id => brindes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => brindes(:one).to_param
    assert_response :success
  end

  test "should update brinde" do
    put :update, :id => brindes(:one).to_param, :brinde => { }
    assert_redirected_to brinde_path(assigns(:brinde))
  end

  test "should destroy brinde" do
    assert_difference('Brinde.count', -1) do
      delete :destroy, :id => brindes(:one).to_param
    end

    assert_redirected_to brindes_path
  end
end
