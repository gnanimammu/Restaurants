require "application_system_test_case"

class MeasuredIngredientsTest < ApplicationSystemTestCase
  setup do
    @measured_ingredient = measured_ingredients(:one)
  end

  test "visiting the index" do
    visit measured_ingredients_url
    assert_selector "h1", text: "Measured ingredients"
  end

  test "should create measured ingredient" do
    visit measured_ingredients_url
    click_on "New measured ingredient"

    fill_in "Dish", with: @measured_ingredient.dish_id
    fill_in "Ingredient", with: @measured_ingredient.ingredient_id
    fill_in "Measurement", with: @measured_ingredient.measurement_id
    click_on "Create Measured ingredient"

    assert_text "Measured ingredient was successfully created"
    click_on "Back"
  end

  test "should update Measured ingredient" do
    visit measured_ingredient_url(@measured_ingredient)
    click_on "Edit this measured ingredient", match: :first

    fill_in "Dish", with: @measured_ingredient.dish_id
    fill_in "Ingredient", with: @measured_ingredient.ingredient_id
    fill_in "Measurement", with: @measured_ingredient.measurement_id
    click_on "Update Measured ingredient"

    assert_text "Measured ingredient was successfully updated"
    click_on "Back"
  end

  test "should destroy Measured ingredient" do
    visit measured_ingredient_url(@measured_ingredient)
    click_on "Destroy this measured ingredient", match: :first

    assert_text "Measured ingredient was successfully destroyed"
  end
end
