require 'rails_helper'

feature 'Admin signs in' do
  scenario 'successfully' do
    admin = create(:admin)

    visit root_path

    click_on 'Sign in'
    fill_in  'Email',    with: admin.email
    fill_in  'Password', with: admin.password
    click_on 'Log in'

    expect(page).to have_content("Welcome, Master #{admin.first_name}")
  end
end
