require 'test_helper'

class RecipeTagsControllerTest < ActionController::TestCase
  setup do
    @recipe_tag = recipe_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_tag" do
    assert_difference('RecipeTag.count') do
      post :create, recipe_tag: @recipe_tag.attributes
    end

    assert_redirected_to recipe_tag_path(assigns(:recipe_tag))
  end

  test "should show recipe_tag" do
    get :show, id: @recipe_tag.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_tag.to_param
    assert_response :success
  end

  test "should update recipe_tag" do
    put :update, id: @recipe_tag.to_param, recipe_tag: @recipe_tag.attributes
    assert_redirected_to recipe_tag_path(assigns(:recipe_tag))
  end

  test "should destroy recipe_tag" do
    assert_difference('RecipeTag.count', -1) do
      delete :destroy, id: @recipe_tag.to_param
    end

    assert_redirected_to recipe_tags_path
  end
end
