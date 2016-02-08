require 'rails_helper'

feature 'User is redirected' do
  scenario 'when trying to create cuisine' do
    visit root_path
    user_sign_in
    visit new_cuisine_path

    expect(page).to have_content 'Access Denied'
  end

  scenario 'when trying to create course' do
    visit root_path
    user_sign_in
    visit new_course_path

    expect(page).to have_content 'Access Denied'
  end

  scenario 'when trying to create preference' do
    visit root_path
    user_sign_in
    visit new_preference_path

    expect(page).to have_content 'Access Denied'
  end

  scenario 'when trying to edit other people\'s recipes' do
    other_user = create(:user)
    recipe = create(:recipe, user: other_user)
    visit root_path
    user_sign_in
    visit edit_recipe_path(recipe)

    expect(page).to have_content 'Access Denied'
  end
end
