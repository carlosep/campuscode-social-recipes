require 'rails_helper'

feature 'Visitor visits social recipes homepage' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content('Welcome to Social Recipes')
  end
  scenario 'and sees jobs on index' do
    recipe = create(:recipe)
    recipe_2 = create(:recipe, name: "Fried banana")
    visit root_path
    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.cuisine.name)
    expect(page).to have_content(recipe.course.name)
    expect(page).to have_content(recipe.preference.name)
    expect(page).to have_content(recipe.difficulty.name)
    expect(page).to have_content(recipe_2.name)
  end
end
