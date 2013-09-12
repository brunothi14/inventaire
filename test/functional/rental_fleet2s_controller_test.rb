require 'test_helper'

class RentalFleet2sControllerTest < ActionController::TestCase
  setup do
    @rental_fleet2 = rental_fleet2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rental_fleet2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rental_fleet2" do
    assert_difference('RentalFleet2.count') do
      post :create, rental_fleet2: { client: @rental_fleet2.client, dateout: @rental_fleet2.dateout, datereturn: @rental_fleet2.datereturn, hours: @rental_fleet2.hours, location: @rental_fleet2.location, model: @rental_fleet2.model, salesman: @rental_fleet2.salesman, serial: @rental_fleet2.serial }
    end

    assert_redirected_to rental_fleet2_path(assigns(:rental_fleet2))
  end

  test "should show rental_fleet2" do
    get :show, id: @rental_fleet2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rental_fleet2
    assert_response :success
  end

  test "should update rental_fleet2" do
    put :update, id: @rental_fleet2, rental_fleet2: { client: @rental_fleet2.client, dateout: @rental_fleet2.dateout, datereturn: @rental_fleet2.datereturn, hours: @rental_fleet2.hours, location: @rental_fleet2.location, model: @rental_fleet2.model, salesman: @rental_fleet2.salesman, serial: @rental_fleet2.serial }
    assert_redirected_to rental_fleet2_path(assigns(:rental_fleet2))
  end

  test "should destroy rental_fleet2" do
    assert_difference('RentalFleet2.count', -1) do
      delete :destroy, id: @rental_fleet2
    end

    assert_redirected_to rental_fleet2s_path
  end
end
