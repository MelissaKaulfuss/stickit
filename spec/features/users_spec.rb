require "rails_helper"

feature "User creates an account" do
  scenario "with a valid username, email and password" do

    visit "users/new"

    fill_in "Username", with: "felixpip"
    fill_in "Email", with: "example@eg.com"
    fill_in "Password", with: "password"
    click_button  "Sign up"
    
    expect(page).to_have content("Welcome, you've created your account!")
  end

  scenario "with an invalid email" do
    
    visit "users/new"

    fill_in "Username", with: "felixpip"
    fill_in "Email", with: "example"
    fill_in "Password", with: "password"
    click_button "Sign up"

    expect(page).to_have content("Invalid details - try again!")
  end
end


