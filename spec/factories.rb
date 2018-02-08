FactoryBot.define do
  factory :user do
    sequence(:username) { |n| "user username#{n}" }
    sequence(:email) { |n| "user email#{n}" }
    password "password"
  end
end
