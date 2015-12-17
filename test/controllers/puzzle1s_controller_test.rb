require 'test_helper'

class Puzzle1sControllerTest < ActionController::TestCase
  setup do
    @puzzle1 = puzzle1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puzzle1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puzzle1" do
    assert_difference('Puzzle1.count') do
      post :create, puzzle1: {  }
    end

    assert_redirected_to puzzle1_path(assigns(:puzzle1))
  end

  test "should show puzzle1" do
    get :show, id: @puzzle1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puzzle1
    assert_response :success
  end

  test "should update puzzle1" do
    patch :update, id: @puzzle1, puzzle1: {  }
    assert_redirected_to puzzle1_path(assigns(:puzzle1))
  end

  test "should destroy puzzle1" do
    assert_difference('Puzzle1.count', -1) do
      delete :destroy, id: @puzzle1
    end

    assert_redirected_to puzzle1s_path
  end
end
