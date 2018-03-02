require "rails_helper"

feature "User creates an account" do
  scenario "with a valid username, email and password" do
    visit new_user_path

    within "form" do
      fill_in "user_username", with: "felixpip"
      fill_in "user_email", with: "example@eg.com"
      fill_in "user_password", with: "password"
      click_on I18n.t("application.users.new.submit")
    end

    expect(page)
      .to have_text(I18n.t(
        "flash.actions.create.notice",
        resource_name: "User"
      ))
    expect(page)
      .to have_text(I18n.t(
        "users.show.welcome",
        username: "felixpip"
      ))
  end
end
