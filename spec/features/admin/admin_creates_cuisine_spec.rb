require 'rails_helper'

feature 'User creates a new recipe' do
  scenario 'successfully' do
    cuisine = build(:cuisine)

    visit root_path
    admin_sign_in
    visit new_cuisine_path

    fill_in 'Name', with: cuisine.name

    click_on "Create Cuisine"

    expect(page).to have_content cuisine.name
  end

  scenario 'invalid' do
    visit root_path
    admin_sign_in
    visit new_cuisine_path

    click_on "Create Cuisine"

    expect(page).to have_content "Name can\'t be blank"
  end
end
