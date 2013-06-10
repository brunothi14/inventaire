require 'test_helper'

class TracteurNeufsControllerTest < ActionController::TestCase
  setup do
    @tracteur_neuf = tracteur_neufs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tracteur_neufs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tracteur_neuf" do
    assert_difference('TracteurNeuf.count') do
      post :create, tracteur_neuf: { arrivee: @tracteur_neuf.arrivee, bonus: @tracteur_neuf.bonus, description: @tracteur_neuf.description, emplacement: @tracteur_neuf.emplacement, facture: @tracteur_neuf.facture, famille: @tracteur_neuf.famille, modele: @tracteur_neuf.modele, prix: @tracteur_neuf.prix, stock: @tracteur_neuf.stock }
    end

    assert_redirected_to tracteur_neuf_path(assigns(:tracteur_neuf))
  end

  test "should show tracteur_neuf" do
    get :show, id: @tracteur_neuf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tracteur_neuf
    assert_response :success
  end

  test "should update tracteur_neuf" do
    put :update, id: @tracteur_neuf, tracteur_neuf: { arrivee: @tracteur_neuf.arrivee, bonus: @tracteur_neuf.bonus, description: @tracteur_neuf.description, emplacement: @tracteur_neuf.emplacement, facture: @tracteur_neuf.facture, famille: @tracteur_neuf.famille, modele: @tracteur_neuf.modele, prix: @tracteur_neuf.prix, stock: @tracteur_neuf.stock }
    assert_redirected_to tracteur_neuf_path(assigns(:tracteur_neuf))
  end

  test "should destroy tracteur_neuf" do
    assert_difference('TracteurNeuf.count', -1) do
      delete :destroy, id: @tracteur_neuf
    end

    assert_redirected_to tracteur_neufs_path
  end
end
