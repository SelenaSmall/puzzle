require 'test_helper'

class ScaffoldControllerTest < ActionController::TestCase
  test "should get puzzleskeleton" do
    get :puzzleskeleton
    assert_response :success
  end

end
