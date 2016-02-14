require 'rails_helper'

feature 'User visits other users profile' do
  scenario 'successfully' do
    user = create(:user)
    other_user = create(:user)
    recipe = create(:recipe, user: other_user)
    user_sign_in(user: user, redirect: true)
    visit user_path(other_user)

    expect(page).to have_content("#{other_user.first_name} Profile")
    expect(page).to have_content(other_user.first_name)
    expect(page).to have_content(other_user.last_name)
    expect(page).to have_content(other_user.city)
    expect(page).to have_content(other_user.facebook)
    expect(page).to have_content(other_user.twitter)
    expect(page).to have_content(other_user.email)
    other_user.cuisines.split(',').each do |cuisine|
      expect(page).to have_content(cuisine)
    end
    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.course.name)
    expect(page).to have_content(recipe.cuisine.name)
    expect(page).to have_content(recipe.difficulty.name)
  end
end
