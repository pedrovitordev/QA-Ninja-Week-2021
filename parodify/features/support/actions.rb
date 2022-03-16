module Actions
  def goto_login
    visit "/"
    click_on "Login"
  end

  def login_with(email, password)
    find("#user_email").set email
    find("#user_password").set password
    click_on "Log in"
  end
end
