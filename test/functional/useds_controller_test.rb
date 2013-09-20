require 'test_helper'

class UsedsControllerTest < ActionController::TestCase
  setup do
    @used = useds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:useds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create used" do
    assert_difference('Used.count') do
      post :create, used: { bonus: @used.bonus, description: @used.description, fielddate: @used.fielddate, hours: @used.hours, location_id: @used.location_id, lsp: @used.lsp, model: @used.model, price: @used.price, serial: @used.serial, stock: @used.stock, year: @used.year }
    end

    assert_redirected_to used_path(assigns(:used))
  end

  test "should show used" do
    get :show, id: @used
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @used
    assert_response :success
  end

  test "should update used" do
    put :update, id: @used, used: { bonus: @used.bonus, description: @used.description, fielddate: @used.fielddate, hours: @used.hours, location_id: @used.location_id, lsp: @used.lsp, model: @used.model, price: @used.price, serial: @used.serial, stock: @used.stock, year: @used.year }
    assert_redirected_to used_path(assigns(:used))
  end

  test "should destroy used" do
    assert_difference('Used.count', -1) do
      delete :destroy, id: @used
    end

    assert_redirected_to useds_path
  end
end
