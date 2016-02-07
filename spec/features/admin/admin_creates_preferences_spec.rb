require 'rails_helper'

feature 'Admin creates a new preference' do
  scenario 'successfully' do
    preference = build(:preference)

    visit root_path
    admin_sign_in
    visit new_preference_path

    fill_in 'Name', with: preference.name

    click_on "Create Preference"

    expect(page).to have_content preference.name
  end

  scenario 'invalid' do
    visit root_path
    admin_sign_in
    visit new_preference_path

    click_on "Create Preference"

    expect(page).to have_content "Name can\'t be blank"
  end
end
