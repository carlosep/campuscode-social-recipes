require 'rails_helper'

feature 'Visitor is redirected' do
  scenario 'when trying to create cuisine' do
    visit new_cuisine_path

    expect(page).to have_content 'Access Denied'
  end
  scenario 'when trying to create recipe' do
    visit new_recipe_path

    expect(page).to have_current_path(user_session_path)
  end
end
