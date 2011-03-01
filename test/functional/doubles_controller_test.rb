require 'test_helper'

class DoublesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:doubles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create double" do
    assert_difference('Double.count') do
      post :create, :double => { }
    end

    assert_redirected_to double_path(assigns(:double))
  end

  test "should show double" do
    get :show, :id => doubles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => doubles(:one).to_param
    assert_response :success
  end

  test "should update double" do
    put :update, :id => doubles(:one).to_param, :double => { }
    assert_redirected_to double_path(assigns(:double))
  end

  test "should destroy double" do
    assert_difference('Double.count', -1) do
      delete :destroy, :id => doubles(:one).to_param
    end

    assert_redirected_to doubles_path
  end
end
