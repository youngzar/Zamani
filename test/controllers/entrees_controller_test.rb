require 'test_helper'

class EntreesControllerTest < ActionController::TestCase
  setup do
    @entree = entrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entree" do
    assert_difference('Entree.count') do
      post :create, entree: { description: @entree.description, food: @entree.food, menu: @entree.menu }
    end

    assert_redirected_to entree_path(assigns(:entree))
  end

  test "should show entree" do
    get :show, id: @entree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entree
    assert_response :success
  end

  test "should update entree" do
    patch :update, id: @entree, entree: { description: @entree.description, food: @entree.food, menu: @entree.menu }
    assert_redirected_to entree_path(assigns(:entree))
  end

  test "should destroy entree" do
    assert_difference('Entree.count', -1) do
      delete :destroy, id: @entree
    end

    assert_redirected_to entrees_path
  end
end
