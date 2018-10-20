require 'test_helper'

class MealPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal_plan = meal_plans(:one)
  end

  test "should get index" do
    get meal_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_plan_url
    assert_response :success
  end

  test "should create meal_plan" do
    assert_difference('MealPlan.count') do
      post meal_plans_url, params: { meal_plan: { recipe: @meal_plan.recipe, user_id: @meal_plan.user_id, weekday: @meal_plan.weekday } }
    end

    assert_redirected_to meal_plan_url(MealPlan.last)
  end

  test "should show meal_plan" do
    get meal_plan_url(@meal_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_plan_url(@meal_plan)
    assert_response :success
  end

  test "should update meal_plan" do
    patch meal_plan_url(@meal_plan), params: { meal_plan: { recipe: @meal_plan.recipe, user_id: @meal_plan.user_id, weekday: @meal_plan.weekday } }
    assert_redirected_to meal_plan_url(@meal_plan)
  end

  test "should destroy meal_plan" do
    assert_difference('MealPlan.count', -1) do
      delete meal_plan_url(@meal_plan)
    end

    assert_redirected_to meal_plans_url
  end
end
