require 'rails_helper'

feature 'Admin signs in' do
  scenario 'successfully' do
    admin = create(:admin)

    visit root_path

    click_on 'Sign In'
    fill_in  'Email',    with: admin.email
    fill_in  'Password', with: admin.password
    click_on 'Log in'

    expect(page).to have_content('Signed in successfully.')
  end
end
