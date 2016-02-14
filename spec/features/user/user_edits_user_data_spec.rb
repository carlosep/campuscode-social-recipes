require 'rails_helper'

feature 'User edits a recipe' do

  scenario 'successfully' do
    user = create(:user)
    recipe = create(:recipe)
    cuisine_1 = create(:cuisine)
    cuisine_2 = create(:cuisine)
    cuisine_3 = create(:cuisine)
    cuisine_4 = create(:cuisine)

    user_sign_in(user: user, redirect: true)
    visit edit_user_registration_path

    fill_in 'First name',            with: 'Another Name'
    fill_in 'Last name',             with: 'Another Last Name'
    fill_in 'City',                  with: 'Ordinaryland'
    fill_in 'Facebook',              with: 'facebook.com/otherstuff'
    fill_in 'Twitter',               with: 'twitter.com/@otherstuff'
    fill_in 'Email',                 with: 'itsamemario@nintendo.com'
    fill_in 'Password',              with: 'newpassword'
    fill_in 'Password confirmation', with: 'newpassword'
    fill_in 'Current password',      with: user.password
    page.check(cuisine_1.name)
    page.check(cuisine_2.name)
    page.check(cuisine_4.name)

    click_on 'Update'

    expect(page).to have_content ('Your account has been updated successfully.')
    visit user_path(user)
    expect(page).to have_content ('Another Name')
    expect(page).to have_content ('Another Last Name')
    expect(page).to have_content ('Ordinaryland')
    expect(page).to have_content ('facebook.com/otherstuff')
    expect(page).to have_content ('twitter.com/@otherstuff')
    expect(page).to have_content ('itsamemario@nintendo.com')
    expect(page).to have_content (cuisine_1.name)
    expect(page).to have_content (cuisine_2.name)
    expect(page).to have_content (cuisine_4.name)
    expect(page).not_to have_content (cuisine_3.name)
  end
end
