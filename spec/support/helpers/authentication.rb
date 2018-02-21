def login_as(user)
  visit new_session_path
  within "form" do
    fill_in "session_email", with: user.email
    fill_in "session_password", with: user.password
    click_on I18n.t("sessions.new.submit")
  end
end
