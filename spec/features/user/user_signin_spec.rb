require 'rails_helper'

feature 'User signs in' do
  scenario 'successfully' do
    user = create(:user)

    visit root_path

    click_on 'Sign in'
    fill_in  'Email',    with: user.email
    fill_in  'Password', with: user.password
    click_on 'Log in'

    expect(page).to have_content('Welcome to Social Recipes, Leonidas')
  end
end
