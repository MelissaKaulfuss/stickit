require "rails_helper"
feature "User creates an account" do
  scenario "with a valid username, email and password" do
    visit new_user_path

    fill_in "user_username", with: "felixpip"
    fill_in "user_email", with: "example@eg.com"
    fill_in "user_password", with: "password"
    click_button "Create User"

    expect(page).to have_text("welcome to stickit felixpip!")
  end
end
