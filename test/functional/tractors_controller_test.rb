require 'test_helper'

class TractorsControllerTest < ActionController::TestCase
  setup do
    @tractor = tractors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tractors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tractor" do
    assert_difference('Tractor.count') do
      post :create, tractor: { description: @tractor.description, fielddate: @tractor.fielddate, hours: @tractor.hours, invdate: @tractor.invdate, invoice: @tractor.invoice, model: @tractor.model, serial: @tractor.serial }
    end

    assert_redirected_to tractor_path(assigns(:tractor))
  end

  test "should show tractor" do
    get :show, id: @tractor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tractor
    assert_response :success
  end

  test "should update tractor" do
    put :update, id: @tractor, tractor: { description: @tractor.description, fielddate: @tractor.fielddate, hours: @tractor.hours, invdate: @tractor.invdate, invoice: @tractor.invoice, model: @tractor.model, serial: @tractor.serial }
    assert_redirected_to tractor_path(assigns(:tractor))
  end

  test "should destroy tractor" do
    assert_difference('Tractor.count', -1) do
      delete :destroy, id: @tractor
    end

    assert_redirected_to tractors_path
  end
end
