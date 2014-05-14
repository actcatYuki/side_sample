require 'test_helper'

class HoysControllerTest < ActionController::TestCase
  setup do
    @hoy = hoys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hoys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hoy" do
    assert_difference('Hoy.count') do
      post :create, hoy: { bye: @hoy.bye, hello: @hoy.hello, hey: @hoy.hey, index: @hoy.index }
    end

    assert_redirected_to hoy_path(assigns(:hoy))
  end

  test "should show hoy" do
    get :show, id: @hoy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hoy
    assert_response :success
  end

  test "should update hoy" do
    patch :update, id: @hoy, hoy: { bye: @hoy.bye, hello: @hoy.hello, hey: @hoy.hey, index: @hoy.index }
    assert_redirected_to hoy_path(assigns(:hoy))
  end

  test "should destroy hoy" do
    assert_difference('Hoy.count', -1) do
      delete :destroy, id: @hoy
    end

    assert_redirected_to hoys_path
  end
end
