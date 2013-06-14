require 'test_helper'

class EquipementsControllerTest < ActionController::TestCase
  setup do
    @equipement = equipements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipement" do
    assert_difference('Equipement.count') do
      post :create, equipement: { arrivee: @equipement.arrivee, bonus: @equipement.bonus, description: @equipement.description, emplacement: @equipement.emplacement, modele: @equipement.modele, prix: @equipement.prix, stock: @equipement.stock }
    end

    assert_redirected_to equipement_path(assigns(:equipement))
  end

  test "should show equipement" do
    get :show, id: @equipement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipement
    assert_response :success
  end

  test "should update equipement" do
    put :update, id: @equipement, equipement: { arrivee: @equipement.arrivee, bonus: @equipement.bonus, description: @equipement.description, emplacement: @equipement.emplacement, modele: @equipement.modele, prix: @equipement.prix, stock: @equipement.stock }
    assert_redirected_to equipement_path(assigns(:equipement))
  end

  test "should destroy equipement" do
    assert_difference('Equipement.count', -1) do
      delete :destroy, id: @equipement
    end

    assert_redirected_to equipements_path
  end
end
