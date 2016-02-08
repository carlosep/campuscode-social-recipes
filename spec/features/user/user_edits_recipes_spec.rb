require 'rails_helper'

feature 'User edits a recipe' do

  scenario 'successfully' do
    recipe = create(:recipe)

    visit edit_recipe_path(recipe)
    user_sign_in

    fill_in 'Name',                with: 'New Recipe'
    select recipe.cuisine.name,    from: "Cuisine"
    select recipe.course.name,     from: "Course"
    select recipe.preference.name, from: "Preference"
    select recipe.difficulty.name, from: "Difficulty"
    fill_in 'Portion',             with: '999'
    fill_in 'Cooking time',        with: '777'
    fill_in 'Ingredient',          with: 'A lot of different ingrediets'
    fill_in 'Directions',          with: 'mix it up and throw it away.'

    click_on 'Edit Recipe'

    expect(page).to have_content recipe.name
    expect(page).to have_content recipe.portion
    expect(page).to have_content recipe.cooking_time
    expect(page).to have_content recipe.ingredient
    expect(page).to have_content recipe.directions
  end

  scenario 'invalid editing of other users' do
    other_user = create(:user)
    recipe = create(:recipe, user: other_user)
    visit root_path
    user_sign_in
    visit users_path(other_user)

    expect(page).not_to have_content 'Edit'
    expect(page).not_to have_content 'Destroy'
  end
end
