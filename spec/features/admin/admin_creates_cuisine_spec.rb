require 'rails_helper'

feature 'Admin creates a new cuisine' do
  scenario 'successfully' do
    cuisine = build(:cuisine)

    admin_sign_in(redirect: true)
    visit new_cuisine_path

    fill_in 'Name', with: cuisine.name

    click_on 'Create Cuisine'

    expect(page).to have_content cuisine.name
  end

  scenario 'invalid' do
    admin_sign_in(redirect: true)
    visit new_cuisine_path

    click_on 'Create Cuisine'

    expect(page).to have_content "Name can\'t be blank"
  end
end
