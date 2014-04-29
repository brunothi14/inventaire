require 'test_helper'

class SmartsheetsControllerTest < ActionController::TestCase
  setup do
    @smartsheet = smartsheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smartsheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smartsheet" do
    assert_difference('Smartsheet.count') do
      post :create, smartsheet: {  }
    end

    assert_redirected_to smartsheet_path(assigns(:smartsheet))
  end

  test "should show smartsheet" do
    get :show, id: @smartsheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smartsheet
    assert_response :success
  end

  test "should update smartsheet" do
    put :update, id: @smartsheet, smartsheet: {  }
    assert_redirected_to smartsheet_path(assigns(:smartsheet))
  end

  test "should destroy smartsheet" do
    assert_difference('Smartsheet.count', -1) do
      delete :destroy, id: @smartsheet
    end

    assert_redirected_to smartsheets_path
  end
end
