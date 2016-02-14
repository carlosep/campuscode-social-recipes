require 'rails_helper'

feature 'Visitor visits social recipes homepage' do
  scenario 'successfully' do
    user = create(:user)
    user_sign_in(user: user, redirect: true)
    expect(page).to have_content("Welcome to Social Recipes, #{user.first_name}")
    expect(page).not_to have_content("New Cuisine")
    expect(page).not_to have_content("New Preference")
    expect(page).not_to have_content("New Course")
  end
  scenario 'as admin' do
    admin = create(:admin)
    user_sign_in(user: admin, redirect: true)
    expect(page).to have_content("Welcome, Master #{admin.first_name}")
    expect(page).to have_content("New Cuisine")
    expect(page).to have_content("New Preference")
    expect(page).to have_content("New Course")
  end
end
