require 'rails_helper'

feature 'Visitor visits social recipes homepage' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_current_path(root_path)
  end
  scenario 'and sees recipes on index' do
    recipe = create(:recipe)
    recipe_2 = create(:recipe, name: 'Fried banana')
    visit root_path
    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.cuisine.name)
    expect(page).to have_content(recipe.course.name)
    expect(page).to have_content(recipe.preference.name)
    expect(page).to have_content(recipe.difficulty.name)
    expect(page).to have_content(recipe_2.name)
  end

  scenario 'and sees last 20 recipes on index' do
    FactoryBot.reload unless FactoryBot.factories.blank?
    25.times { create(:recipe) }

    visit root_path
    (6..25).each do |i|
      expect(page).to have_content("Name of meal ##{i}\n")
    end
    (1..5).each do |i|
      expect(page).not_to have_content("Name of meal ##{i}\n")
    end
  end
end
