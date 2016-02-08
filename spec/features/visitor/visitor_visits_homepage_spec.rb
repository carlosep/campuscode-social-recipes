require 'rails_helper'

feature 'Visitor visits social recipes homepage' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content('Welcome to Social Recipes')
  end
  scenario 'and sees recipes on index' do
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

  scenario 'and sees last 20 recipes on index' do
    FactoryGirl.reload unless FactoryGirl.factories.blank?
    for i in 1..25
      recipe = create(:recipe)
    end

    visit root_path
    for i in 6..25
      expect(page).to have_content("Name of meal ##{i} P") #Gambiarra??
    end
    for i in 1..5
      expect(page).not_to have_content("Name of meal ##{i} P") #Gambiarra??
    end
  end
end
