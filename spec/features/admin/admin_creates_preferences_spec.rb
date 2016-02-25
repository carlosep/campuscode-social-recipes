require 'rails_helper'

feature 'Admin creates a new preference' do
  scenario 'successfully' do
    preference = build(:preference)

    admin_sign_in(redirect: true)
    visit new_preference_path

    fill_in 'Name', with: preference.name

    click_on 'Create Preference'

    expect(page).to have_content preference.name
  end

  scenario 'invalid' do
    admin_sign_in(redirect: true)
    visit new_preference_path

    click_on 'Create Preference'

    expect(page).to have_content "Name can't be blank"
  end
end
