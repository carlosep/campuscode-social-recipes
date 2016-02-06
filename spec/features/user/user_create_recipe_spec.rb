require 'rails_helper'

feature 'User creates a new recipe' do
  scenario 'successfully' do
    recipe = build(:recipe)

    visit new_recipe_path
    #sign_in

    fill_in 'Name',                with: recipe.name
    select recipe.cuisine.name,    from: "Cuisine"
    select recipe.course.name,     from: "Course"
    select recipe.preference.name, from: "Preference"
    select recipe.difficulty.name, from: "Difficulty"
    fill_in 'Portions',            with: recipe.portions
    fill_in 'Cooking time',        with: recipe.cooking_time
    fill_in 'Ingredients',         with: recipe.ingredients
    fill_in 'Directions',          with: recipe.directions

    click_on "Create recipe"

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.cuisine.name
    expect(page).to have_content recipe.course.name
    expect(page).to have_content recipe.preference.name
    expect(page).to have_content recipe.difficulty.name
    expect(page).to have_content recipe.portions
    expect(page).to have_content recipe.cooking_time
    expect(page).to have_content recipe.ingredients
    expect(page).to have_content recipe.directions
  end

  scenario 'invalid' do
    visit new_recipe_path
    click_on "Create recipe"
    ['Name', 'Cuisine', 'Course', 'Preference', 'Difficulty',
     'Portions', 'Cooking time', 'Ingredients', 'Directions'].each do |field|
      expect(page).to have_content "#{field} can\'t be blank"
    end
  end
end
