require 'rails_helper'

feature 'User visits user area' do
  scenario 'successfully' do
    user = create(:user)
    user_sign_in(user: user, redirect: true)
    visit user_path(id: user)

    expect(page).to have_content('Your Profile')
    expect(page).to have_content(user.first_name)
    expect(page).to have_content(user.last_name)
    expect(page).to have_content(user.city)
    expect(page).to have_content(user.facebook)
    expect(page).to have_content(user.email)
    expect(page).to have_content(user.twitter)
    user.cuisines.split(',').each do |cuisine|
      expect(page).to have_content(cuisine)
    end
  end

  scenario 'and sees only their own recipes' do
    user = create(:user)
    jack = create(:user, first_name: 'Jack')
    recipe = create(:recipe, user: user)
    recipe_2 = create(:recipe, user: user)
    recipe_3 = create(:recipe, user: jack)
    user_sign_in(user: user, redirect: true)
    visit user_path(id: user)

    expect(page).to have_content('My Recipes')
    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.cuisine.name)
    expect(page).to have_content(recipe.course.name)
    expect(page).to have_content(recipe.preference.name)
    expect(page).to have_content(recipe.difficulty.name)
    expect(page).to have_content(recipe_2.name)
    expect(page).to have_content(recipe_2.cuisine.name)
    expect(page).to have_content(recipe_2.course.name)
    expect(page).to have_content(recipe_2.preference.name)
    expect(page).to have_content(recipe_2.difficulty.name)

    within('.recipes') do
      expect(page).to have_content('Edit')
      expect(page).to have_content('Destroy')
    end

    expect(page).not_to have_content(recipe_3.name)
    expect(page).not_to have_content(recipe_3.cuisine.name)
    expect(page).not_to have_content(recipe_3.course.name)
    expect(page).not_to have_content(recipe_3.preference.name)
    expect(page).not_to have_content(recipe_3.difficulty.name)
  end
end
