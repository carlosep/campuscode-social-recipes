require 'rails_helper'

feature 'User signs in' do
  scenario 'successfully' do
    user = create(:user)

    visit root_path

    click_on 'Sign In'
    fill_in  'Email',    with: user.email
    fill_in  'Password', with: user.password
    click_on 'Log in'

    expect(page).to have_content('Signed in successfully.')
  end
end
