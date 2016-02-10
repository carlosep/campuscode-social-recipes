require 'rails_helper'

feature 'User chooses favorite recipes' do
  scenario 'successfully' do
    recipe = create(:recipe)
    user_sign_in(redirect: true)
    within ('.recipes') do
      click_on recipe.name
    end

    click_on 'Favorite'

    expect(page).to have_content('Favorited')
  end

  scenario 'And sees favorite recipes on user area' do
    recipe = create(:recipe)
    user = create(:user)
    user_sign_in(user: user, redirect: true)
    within ('.recipes') do
      click_on recipe.name
    end
    click_on 'Favorite'
    visit user_path(user)

    expect(page).to have_content('Favorited Recipes:')
    expect(page).to have_content(recipe.name)
  end
end
