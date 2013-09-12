require 'test_helper'

class SnowblowersControllerTest < ActionController::TestCase
  setup do
    @snowblower = snowblowers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snowblowers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snowblower" do
    assert_difference('Snowblower.count') do
      post :create, snowblower: { bonus: @snowblower.bonus, brand: @snowblower.brand, color: @snowblower.color, description: @snowblower.description, model: @snowblower.model, pricec: @snowblower.pricec, serial: @snowblower.serial, stock: @snowblower.stock }
    end

    assert_redirected_to snowblower_path(assigns(:snowblower))
  end

  test "should show snowblower" do
    get :show, id: @snowblower
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snowblower
    assert_response :success
  end

  test "should update snowblower" do
    put :update, id: @snowblower, snowblower: { bonus: @snowblower.bonus, brand: @snowblower.brand, color: @snowblower.color, description: @snowblower.description, model: @snowblower.model, pricec: @snowblower.pricec, serial: @snowblower.serial, stock: @snowblower.stock }
    assert_redirected_to snowblower_path(assigns(:snowblower))
  end

  test "should destroy snowblower" do
    assert_difference('Snowblower.count', -1) do
      delete :destroy, id: @snowblower
    end

    assert_redirected_to snowblowers_path
  end
end
