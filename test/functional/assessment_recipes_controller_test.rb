require 'test_helper'

class AssessmentRecipesControllerTest < ActionController::TestCase
  setup do
    @assessment_recipe = assessment_recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assessment_recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assessment_recipe" do
    assert_difference('AssessmentRecipe.count') do
      post :create, assessment_recipe: @assessment_recipe.attributes
    end

    assert_redirected_to assessment_recipe_path(assigns(:assessment_recipe))
  end

  test "should show assessment_recipe" do
    get :show, id: @assessment_recipe.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assessment_recipe.to_param
    assert_response :success
  end

  test "should update assessment_recipe" do
    put :update, id: @assessment_recipe.to_param, assessment_recipe: @assessment_recipe.attributes
    assert_redirected_to assessment_recipe_path(assigns(:assessment_recipe))
  end

  test "should destroy assessment_recipe" do
    assert_difference('AssessmentRecipe.count', -1) do
      delete :destroy, id: @assessment_recipe.to_param
    end

    assert_redirected_to assessment_recipes_path
  end
end
