require 'test_helper'

class TeacherControllerTest < ActionController::TestCase
  test "should get teachers" do
    get :teachers
    assert_response :success
  end

end
