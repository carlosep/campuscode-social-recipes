require 'rails_helper'

feature 'User is redirected' do
  scenario 'when trying to create cuisine' do
    user_sign_in(redirect: true)
    visit new_cuisine_path

    expect(page).to have_content 'Access Denied'
  end

  scenario 'when trying to create course' do
    user_sign_in(redirect: true)
    visit new_course_path

    expect(page).to have_content 'Access Denied'
  end

  scenario 'when trying to create preference' do
    user_sign_in(redirect: true)
    visit new_preference_path

    expect(page).to have_content 'Access Denied'
  end

  scenario 'when trying to edit other people\'s recipes' do
    other_user = create(:user)
    recipe = create(:recipe, user: other_user)
    user_sign_in(redirect: true)
    visit edit_recipe_path(id: recipe)

    expect(page).to have_content 'Access Denied'
  end
end
