FactoryBot.define do
  factory :sticker_collection do
    title "My Macbook Pro"
    description "Collected over the past 3 years"
    user
    image "path/to/sticker/on/s3"
  end
  factory :sticker do
    sequence(:name) { |n| "ruby sticker#{n}" }
    sequence(:description) { |n| "rubyconf AU #{n}" }
    sequence(:url) { |n| "https://rubyconf.org.au/#{n}" }
    sticker_collection
  end
  factory :user do
    sequence(:username) { |n| "user username#{n}" }
    sequence(:email) { |n| "user email#{n}" }
    password "password"
  end
end