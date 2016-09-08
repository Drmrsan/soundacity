require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get collection" do
    get :collection
    assert_response :success
  end

  test "should get upload" do
    get :upload
    assert_response :success
  end

end
