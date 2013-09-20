require 'test_helper'

class UsedAccessoriesControllerTest < ActionController::TestCase
  setup do
    @used_accessory = used_accessories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:used_accessories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create used_accessory" do
    assert_difference('UsedAccessory.count') do
      post :create, used_accessory: { bonus: @used_accessory.bonus, brand: @used_accessory.brand, description: @used_accessory.description, fielddate: @used_accessory.fielddate, location_id: @used_accessory.location_id, lsp: @used_accessory.lsp, model: @used_accessory.model, price: @used_accessory.price, serial: @used_accessory.serial, stock: @used_accessory.stock, year: @used_accessory.year }
    end

    assert_redirected_to used_accessory_path(assigns(:used_accessory))
  end

  test "should show used_accessory" do
    get :show, id: @used_accessory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @used_accessory
    assert_response :success
  end

  test "should update used_accessory" do
    put :update, id: @used_accessory, used_accessory: { bonus: @used_accessory.bonus, brand: @used_accessory.brand, description: @used_accessory.description, fielddate: @used_accessory.fielddate, location_id: @used_accessory.location_id, lsp: @used_accessory.lsp, model: @used_accessory.model, price: @used_accessory.price, serial: @used_accessory.serial, stock: @used_accessory.stock, year: @used_accessory.year }
    assert_redirected_to used_accessory_path(assigns(:used_accessory))
  end

  test "should destroy used_accessory" do
    assert_difference('UsedAccessory.count', -1) do
      delete :destroy, id: @used_accessory
    end

    assert_redirected_to used_accessories_path
  end
end
