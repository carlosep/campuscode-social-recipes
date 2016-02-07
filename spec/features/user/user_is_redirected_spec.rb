require 'rails_helper'

feature 'User is redirected' do
  scenario 'when trying to create cuisine' do
    visit root_path
    user_sign_in
    visit new_cuisine_path

    expect(page).to have_content 'Access Denied'
  end
end
