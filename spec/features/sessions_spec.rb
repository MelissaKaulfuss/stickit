require "rails_helper"

feature "user creates a new session" do
  scenario "successfully" do
    user = create(:user)
    login_as(user)

    expect(page).to have_text(
      I18n.t("users.show.welcome", username: user.username)
    )
    expect(page).to have_text(I18n.t("sessions.create.flash.notice"))
  end

  scenario "and logs out" do
    user = create(:user)
    login_as(user)

    click_on I18n.t("authentication.links.logout")

    expect(page).to have_text(I18n.t("authentication.title"))
    expect(page).to have_text(
      I18n.t("sessions.destroy.flash.notice", resource_name: "Session")
    )
  end
end
