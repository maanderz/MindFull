require "application_system_test_case"

class CategoryItemsTest < ApplicationSystemTestCase
  setup do
    @category_item = category_items(:one)
  end

  test "visiting the index" do
    visit category_items_url
    assert_selector "h1", text: "Category Items"
  end

  test "creating a Category item" do
    visit category_items_url
    click_on "New Category Item"

    fill_in "Categorry", with: @category_item.categorry_id
    fill_in "Ingredient Name", with: @category_item.ingredient_name
    click_on "Create Category item"

    assert_text "Category item was successfully created"
    click_on "Back"
  end

  test "updating a Category item" do
    visit category_items_url
    click_on "Edit", match: :first

    fill_in "Categorry", with: @category_item.categorry_id
    fill_in "Ingredient Name", with: @category_item.ingredient_name
    click_on "Update Category item"

    assert_text "Category item was successfully updated"
    click_on "Back"
  end

  test "destroying a Category item" do
    visit category_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Category item was successfully destroyed"
  end
end
