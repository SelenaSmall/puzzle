require 'test_helper'

class PuzzleskeletonsControllerTest < ActionController::TestCase
  setup do
    @puzzleskeleton = puzzleskeletons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puzzleskeletons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puzzleskeleton" do
    assert_difference('Puzzleskeleton.count') do
      post :create, puzzleskeleton: {  }
    end

    assert_redirected_to puzzleskeleton_path(assigns(:puzzleskeleton))
  end

  test "should show puzzleskeleton" do
    get :show, id: @puzzleskeleton
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puzzleskeleton
    assert_response :success
  end

  test "should update puzzleskeleton" do
    patch :update, id: @puzzleskeleton, puzzleskeleton: {  }
    assert_redirected_to puzzleskeleton_path(assigns(:puzzleskeleton))
  end

  test "should destroy puzzleskeleton" do
    assert_difference('Puzzleskeleton.count', -1) do
      delete :destroy, id: @puzzleskeleton
    end

    assert_redirected_to puzzleskeletons_path
  end
end
