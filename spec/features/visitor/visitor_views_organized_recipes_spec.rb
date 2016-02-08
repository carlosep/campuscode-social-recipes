require 'rails_helper'

feature 'Visitor views organized recipes' do
  scenario 'successfully' do
    course = create(:course)
    cuisine = create(:cuisine)
    preference = create(:preference)
    visit root_path

    expect(page).to have_content('Preferences:')
    expect(page).to have_content('Cuisines:')
    expect(page).to have_content('Courses:')
    expect(page).to have_content(course.name)
    expect(page).to have_content(cuisine.name)
    expect(page).to have_content(preference.name)
  end
  scenario 'And chooses preference' do
    preference = create(:preference, name: 'Beef')
    recipe = create(:recipe, preference: preference)

    visit root_path
    click_on preference.name

    expect(page).to have_content(preference.name)
    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.course)
    expect(page).to have_content(recipe.difficulty)
    expect(page).to have_content(recipe.preference)
    expect(page).to have_content(recipe.cuisine)
  end
  scenario 'And chooses course' do
    course = create(:course, name: 'Main Course')
    recipe = create(:recipe, course: course)

    visit root_path
    click_on course.name

    expect(page).to have_content(course.name)
    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.course)
    expect(page).to have_content(recipe.difficulty)
    expect(page).to have_content(recipe.preference)
    expect(page).to have_content(recipe.cuisine)
  end
  scenario 'And chooses cuisine' do
    cuisine = create(:cuisine, name: 'Portuguese')
    recipe = create(:recipe, cuisine: cuisine)

    visit root_path
    click_on cuisine.name

    expect(page).to have_content(cuisine.name)
    expect(page).to have_content(recipe.name)
    expect(page).to have_content(recipe.course)
    expect(page).to have_content(recipe.difficulty)
    expect(page).to have_content(recipe.preference)
    expect(page).to have_content(recipe.cuisine)
  end
end
