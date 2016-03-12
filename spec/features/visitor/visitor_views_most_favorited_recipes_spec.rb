require 'rails_helper'

feature 'Visitor views most favorited recipes on homepage' do
  scenario 'successfully' do
    recipe = create(:recipe)
    recipe2 = create(:recipe)
    recipe3 = create(:recipe)
    user1 = create(:user)
    user2 = create(:user)
    user3 = create(:user)
    create(:favorite, user_id: user1.id, recipe_id: recipe.id)
    create(:favorite, user_id: user1.id, recipe_id: recipe2.id)
    create(:favorite, user_id: user1.id, recipe_id: recipe3.id)
    create(:favorite, user_id: user2.id, recipe_id: recipe3.id)
    create(:favorite, user_id: user2.id, recipe_id: recipe2.id)
    create(:favorite, user_id: user3.id, recipe_id: recipe2.id)

    visit root_path

    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe2.name)
    expect(page).to have_content(recipe3.name)
  end
end
