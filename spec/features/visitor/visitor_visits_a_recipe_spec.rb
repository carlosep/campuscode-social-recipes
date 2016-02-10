require 'rails_helper'

feature 'Visitor visits a recipe' do
  scenario 'successfully' do
    recipe = create(:recipe)

    visit root_path

    within ('.recipes') do
      click_on recipe.name
    end

    expect(page).to have_content(recipe.name)
    # expect(page).to have_content(user.name)
    expect(page).to have_content(recipe.preference.name)
    expect(page).to have_content(recipe.course.name)
    expect(page).to have_content(recipe.cuisine.name)
    expect(page).to have_content(recipe.portion)
    expect(page).to have_content(recipe.cooking_time)
    expect(page).to have_content(recipe.difficulty.name)
    expect(page).to have_content(recipe.ingredient)
    expect(page).to have_content(recipe.directions)
    # expect(page).to have_content(recipe.favorite)
    # expect(page).to have_content(recipe.email)
    # expect(page).to have_content(photo) #???
  end
end
