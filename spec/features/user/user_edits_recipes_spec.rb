require 'rails_helper'

feature 'User edits a recipe' do
  scenario 'successfully' do
    user = create(:user)
    recipe = create(:recipe, user: user)

    user_sign_in(user: user, redirect: true)
    visit edit_recipe_path(id: recipe)

    fill_in 'Name',                with: 'New Recipe'
    select recipe.cuisine.name,    from: 'Cuisine'
    select recipe.course.name,     from: 'Course'
    select recipe.preference.name, from: 'Preference'
    select recipe.difficulty.name, from: 'Difficulty'
    fill_in 'Portion',             with: '999'
    fill_in 'Cooking time',        with: '777'
    fill_in 'Ingredient',          with: 'A lot of different ingrediets'
    fill_in 'Directions',          with: 'mix it up and throw it away.'

    click_on 'Edit Recipe'

    expect(page).to have_content 'New Recipe'
    expect(page).to have_content 999
    expect(page).to have_content 777
    expect(page).to have_content 'A lot of different ingrediets'
    expect(page).to have_content 'mix it up and throw it away.'
  end

  scenario 'unsuccessfully' do
    user = create(:user)
    recipe = create(:recipe, user: user)

    user_sign_in(user: user, redirect: true)
    visit edit_recipe_path(id: recipe)

    fill_in 'Name',                with: ''
    select recipe.cuisine.name,    from: 'Cuisine'
    select recipe.course.name,     from: 'Course'
    select recipe.preference.name, from: 'Preference'
    select recipe.difficulty.name, from: 'Difficulty'
    fill_in 'Portion',             with: ''
    fill_in 'Cooking time',        with: ''
    fill_in 'Ingredient',          with: ''
    fill_in 'Directions',          with: ''

    click_on 'Edit Recipe'

    expect(page).to have_current_path("/en#{recipe_path(id: recipe)}")
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Portion can't be blank"
    expect(page).to have_content "Cooking time can't be blank"
    expect(page).to have_content "Ingredient can't be blank"
    expect(page).to have_content "Directions can't be blank"
  end

  scenario 'invalid editing of other users recipes' do
    other_user = create(:user)
    create(:recipe, user: other_user)
    user_sign_in(redirect: true)
    visit user_path(id: other_user)

    expect(page).not_to have_content 'Edit'
    expect(page).not_to have_content 'Destroy'
  end
end
