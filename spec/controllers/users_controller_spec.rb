require "rails_helper"

describe UsersController do
  context "GET #new" do
    context "with invalid params" do
      it "does not create a new user" do
        user_params = { email: "silly@email.com" }

        expect do
          post :create, params: { user: user_params }
        end.not_to change(User, :count)
      end

      it "renders new" do
        user_params = { email: "silly@email.com" }

        post :create, params: { user: user_params }

        expect(response).to render_template(:new)
      end

      it "displays a flash alert" do
        user_params = { email: "john@example.com" }

        post :create, params: { user: user_params }

        expect(flash[:alert])
          .to match I18n.t("flash.actions.create.alert", resource_name: "User")
      end
    end
  end
end
