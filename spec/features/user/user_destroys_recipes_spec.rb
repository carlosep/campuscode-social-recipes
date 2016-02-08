require 'rails_helper'

feature 'User destroys a recipe' do

  scenario 'successfully' do
    recipe = create(:recipe)

    visit recipe_path(recipe)
    user_sign_in

    click_on 'Destroy'

    expect(page).to have_content ('[MESSAGE YET TO BE ADDED]')
  end
end
