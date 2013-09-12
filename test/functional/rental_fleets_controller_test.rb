require 'test_helper'

class RentalFleetsControllerTest < ActionController::TestCase
  setup do
    @rental_fleet = rental_fleets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rental_fleets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rental_fleet" do
    assert_difference('RentalFleet.count') do
      post :create, rental_fleet: { client: @rental_fleet.client, dateout: @rental_fleet.dateout, datereturn: @rental_fleet.datereturn, hours: @rental_fleet.hours, location: @rental_fleet.location, model: @rental_fleet.model, salesman: @rental_fleet.salesman, serial: @rental_fleet.serial }
    end

    assert_redirected_to rental_fleet_path(assigns(:rental_fleet))
  end

  test "should show rental_fleet" do
    get :show, id: @rental_fleet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rental_fleet
    assert_response :success
  end

  test "should update rental_fleet" do
    put :update, id: @rental_fleet, rental_fleet: { client: @rental_fleet.client, dateout: @rental_fleet.dateout, datereturn: @rental_fleet.datereturn, hours: @rental_fleet.hours, location: @rental_fleet.location, model: @rental_fleet.model, salesman: @rental_fleet.salesman, serial: @rental_fleet.serial }
    assert_redirected_to rental_fleet_path(assigns(:rental_fleet))
  end

  test "should destroy rental_fleet" do
    assert_difference('RentalFleet.count', -1) do
      delete :destroy, id: @rental_fleet
    end

    assert_redirected_to rental_fleets_path
  end
end
