require 'test_helper'

class WebappControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get options" do
    get :options
    assert_response :success
  end

  test "should get schools" do
    get :schools
    assert_response :success
  end

  test "should get teachers" do
    get :teachers
    assert_response :success
  end

  test "should get map" do
    get :map
    assert_response :success
  end

  test "should get radar" do
    get :radar
    assert_response :success
  end

end
