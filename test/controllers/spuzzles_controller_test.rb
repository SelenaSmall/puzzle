require 'test_helper'

class SpuzzlesControllerTest < ActionController::TestCase
  setup do
    @spuzzle = spuzzles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spuzzles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spuzzle" do
    assert_difference('Spuzzle.count') do
      post :create, spuzzle: { name: @spuzzle.name, picture: @spuzzle.picture, string: @spuzzle.string }
    end

    assert_redirected_to spuzzle_path(assigns(:spuzzle))
  end

  test "should show spuzzle" do
    get :show, id: @spuzzle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spuzzle
    assert_response :success
  end

  test "should update spuzzle" do
    patch :update, id: @spuzzle, spuzzle: { name: @spuzzle.name, picture: @spuzzle.picture, string: @spuzzle.string }
    assert_redirected_to spuzzle_path(assigns(:spuzzle))
  end

  test "should destroy spuzzle" do
    assert_difference('Spuzzle.count', -1) do
      delete :destroy, id: @spuzzle
    end

    assert_redirected_to spuzzles_path
  end
end
