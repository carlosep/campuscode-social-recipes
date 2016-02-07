require 'rails_helper'

feature 'Admin creates a new course' do
  scenario 'successfully' do
    course = build(:course)

    visit root_path
    admin_sign_in
    visit new_course_path

    fill_in 'Name', with: course.name

    click_on "Create Course"

    expect(page).to have_content course.name
  end

  scenario 'invalid' do
    visit root_path
    admin_sign_in
    visit new_course_path

    click_on "Create Course"

    expect(page).to have_content "Name can\'t be blank"
  end
end
