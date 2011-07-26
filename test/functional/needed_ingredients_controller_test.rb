require 'test_helper'

class NeededIngredientsControllerTest < ActionController::TestCase
  setup do
    @needed_ingredient = needed_ingredients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:needed_ingredients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create needed_ingredient" do
    assert_difference('NeededIngredient.count') do
      post :create, needed_ingredient: @needed_ingredient.attributes
    end

    assert_redirected_to needed_ingredient_path(assigns(:needed_ingredient))
  end

  test "should show needed_ingredient" do
    get :show, id: @needed_ingredient.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @needed_ingredient.to_param
    assert_response :success
  end

  test "should update needed_ingredient" do
    put :update, id: @needed_ingredient.to_param, needed_ingredient: @needed_ingredient.attributes
    assert_redirected_to needed_ingredient_path(assigns(:needed_ingredient))
  end

  test "should destroy needed_ingredient" do
    assert_difference('NeededIngredient.count', -1) do
      delete :destroy, id: @needed_ingredient.to_param
    end

    assert_redirected_to needed_ingredients_path
  end
end
