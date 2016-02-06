require 'rails_helper'

feature 'Visitor visits social recipes homepage' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_content('Welcome to Social Recipes')
  end
end
