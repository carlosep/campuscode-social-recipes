require 'rails_helper'

feature 'User destroys a recipe' do

  scenario 'successfully' do
    user = create(:user)
    recipe = create(:recipe, user: user)

    visit root_path
    user_sign_in(user: user)
    visit user_path(user)

    click_on 'Destroy'

    expect(page).to have_content ("#{recipe.name} was terminated.")
  end
end
