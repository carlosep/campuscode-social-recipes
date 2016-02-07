module ModelsMacros
  def user_sign_in
    user = User.create(email: "user@socialrecipes.com.br", password: "12345678")
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    within('.actions') do
      click_on "Log in"
    end
  end
  def admin_sign_in
    admin = User.create(email: "admin@socialrecipes.com.br", password: "12345678", admin: true)
    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password
    within('.actions') do
      click_on "Log in"
    end
  end
end
