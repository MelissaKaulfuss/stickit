require "rails_helper"

describe SessionsController do
  context "GET #new" do
    context "with no password" do
      it "does not set current user" do
        user = create(:user)
        allow(controller).to receive(:current_user).and_return(user)

        post :create, params: { session: { email: user.email } }

        expect(session[:user_id]).to eq nil
      end

      it "renders the flash[:alert]" do
        user = create(:user)

        post :create, params: { session: { email: user.email } }

        expect(flash[:alert]).to match I18n.t("sessions.create.flash.alert")
      end
    end
  end
end
