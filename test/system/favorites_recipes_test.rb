require "application_system_test_case"

class FavoritesRecipesTest < ApplicationSystemTestCase
  setup do
    @favorites_recipe = favorites_recipes(:one)
  end

  test "visiting the index" do
    visit favorites_recipes_url
    assert_selector "h1", text: "Favorites Recipes"
  end

  test "creating a Favorites recipe" do
    visit favorites_recipes_url
    click_on "New Favorites Recipe"

    fill_in "Name", with: @favorites_recipe.name
    fill_in "Recipe", with: @favorites_recipe.recipe
    fill_in "User", with: @favorites_recipe.user_id
    click_on "Create Favorites recipe"

    assert_text "Favorites recipe was successfully created"
    click_on "Back"
  end

  test "updating a Favorites recipe" do
    visit favorites_recipes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @favorites_recipe.name
    fill_in "Recipe", with: @favorites_recipe.recipe
    fill_in "User", with: @favorites_recipe.user_id
    click_on "Update Favorites recipe"

    assert_text "Favorites recipe was successfully updated"
    click_on "Back"
  end

  test "destroying a Favorites recipe" do
    visit favorites_recipes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Favorites recipe was successfully destroyed"
  end
end
