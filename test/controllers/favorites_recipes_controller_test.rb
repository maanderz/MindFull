require 'test_helper'

class FavoritesRecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorites_recipe = favorites_recipes(:one)
  end

  test "should get index" do
    get favorites_recipes_url
    assert_response :success
  end

  test "should get new" do
    get new_favorites_recipe_url
    assert_response :success
  end

  test "should create favorites_recipe" do
    assert_difference('FavoritesRecipe.count') do
      post favorites_recipes_url, params: { favorites_recipe: { name: @favorites_recipe.name, recipe: @favorites_recipe.recipe, user_id: @favorites_recipe.user_id } }
    end

    assert_redirected_to favorites_recipe_url(FavoritesRecipe.last)
  end

  test "should show favorites_recipe" do
    get favorites_recipe_url(@favorites_recipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_favorites_recipe_url(@favorites_recipe)
    assert_response :success
  end

  test "should update favorites_recipe" do
    patch favorites_recipe_url(@favorites_recipe), params: { favorites_recipe: { name: @favorites_recipe.name, recipe: @favorites_recipe.recipe, user_id: @favorites_recipe.user_id } }
    assert_redirected_to favorites_recipe_url(@favorites_recipe)
  end

  test "should destroy favorites_recipe" do
    assert_difference('FavoritesRecipe.count', -1) do
      delete favorites_recipe_url(@favorites_recipe)
    end

    assert_redirected_to favorites_recipes_url
  end
end
