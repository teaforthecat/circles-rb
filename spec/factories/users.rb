FactoryBot.define do
  factory :user do
    sequence(:email_address) { |n| "email#{}@localhost.local" }

    password { "abcd" }
    password_confirmation { "abcd" }
    person
  end
end
