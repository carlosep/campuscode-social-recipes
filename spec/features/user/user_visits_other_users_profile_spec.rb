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
    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.course.name)
    expect(page).to have_content(recipe.cuisine.name)
    expect(page).to have_content(recipe.difficulty.name)
  end

  scenario 'and sees only their own recipes' do
    user = create(:user)
    jack = create(:user, first_name: 'Jack')
    recipe = create(:recipe, user: user)
    recipe_2 = create(:recipe, user: user)
    recipe_3 = create(:recipe, user: jack)
    user_sign_in(user: user, redirect: true)
    visit user_path(user)

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
      expect(page).to have_content("Edit")
      expect(page).to have_content("Destroy")
    end

    expect(page).not_to have_content(recipe_3.name)
    expect(page).not_to have_content(recipe_3.cuisine.name)
    expect(page).not_to have_content(recipe_3.course.name)
    expect(page).not_to have_content(recipe_3.preference.name)
    expect(page).not_to have_content(recipe_3.difficulty.name)
  end
end
