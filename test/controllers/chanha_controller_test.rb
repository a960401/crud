require 'test_helper'

class ChanhaControllerTest < ActionController::TestCase
  test "should get read" do
    get :read
    assert_response :success
  end

  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
