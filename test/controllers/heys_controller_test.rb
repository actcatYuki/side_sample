require 'test_helper'

class HeysControllerTest < ActionController::TestCase
  setup do
    @hey = heys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:heys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hey" do
    assert_difference('Hey.count') do
      post :create, hey: { bye: @hey.bye, hello: @hey.hello, hey: @hey.hey, index: @hey.index }
    end

    assert_redirected_to hey_path(assigns(:hey))
  end

  test "should show hey" do
    get :show, id: @hey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hey
    assert_response :success
  end

  test "should update hey" do
    patch :update, id: @hey, hey: { bye: @hey.bye, hello: @hey.hello, hey: @hey.hey, index: @hey.index }
    assert_redirected_to hey_path(assigns(:hey))
  end

  test "should destroy hey" do
    assert_difference('Hey.count', -1) do
      delete :destroy, id: @hey
    end

    assert_redirected_to heys_path
  end
end
