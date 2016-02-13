module ModelsMacros
  def user_sign_in(user: nil, redirect: nil)
    redirect ||= false
    user ||= User.create(email: "user@socialrecipes.com.br", password: "12345678")
    visit new_user_session_path if redirect
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    within('.actions') do
      click_on "Log in"
    end
  end
  def admin_sign_in(redirect: nil)
    redirect ||= false
    admin = User.create(email: "admin@socialrecipes.com.br", password: "12345678", admin: true)
    visit new_user_session_path if redirect
    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password
    within('.actions') do
      click_on "Log in"
    end
  end
  
  def image_upload_path
    Rails.root + "spec/fixtures/sample.jpg"
  end
end
