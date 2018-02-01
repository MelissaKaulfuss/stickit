require "rails_helper"
require "users_controller"

describe UsersController do
  describe "GET #new" do
   it { is_expected.to route(:get, "/users/new")
      .to(controller: :users, action: :new) }
  end

  describe "POST #create" do
    context "with valid attributes" do
      it { is_expected.to route(:post, "/users")
        .to(controller: :users, action: :create) }

    end     
  end
end

