require 'test_helper'

class UsedOthersControllerTest < ActionController::TestCase
  setup do
    @used_other = used_others(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:used_others)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create used_other" do
    assert_difference('UsedOther.count') do
      post :create, used_other: { bonus: @used_other.bonus, brand: @used_other.brand, description: @used_other.description, fielddate: @used_other.fielddate, hours: @used_other.hours, location_id: @used_other.location_id, lsp: @used_other.lsp, model: @used_other.model, price: @used_other.price, serial: @used_other.serial, stock: @used_other.stock, year: @used_other.year }
    end

    assert_redirected_to used_other_path(assigns(:used_other))
  end

  test "should show used_other" do
    get :show, id: @used_other
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @used_other
    assert_response :success
  end

  test "should update used_other" do
    put :update, id: @used_other, used_other: { bonus: @used_other.bonus, brand: @used_other.brand, description: @used_other.description, fielddate: @used_other.fielddate, hours: @used_other.hours, location_id: @used_other.location_id, lsp: @used_other.lsp, model: @used_other.model, price: @used_other.price, serial: @used_other.serial, stock: @used_other.stock, year: @used_other.year }
    assert_redirected_to used_other_path(assigns(:used_other))
  end

  test "should destroy used_other" do
    assert_difference('UsedOther.count', -1) do
      delete :destroy, id: @used_other
    end

    assert_redirected_to used_others_path
  end
end
