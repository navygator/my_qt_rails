FactoryGirl.define do
  factory :user do
    provider "foursquare"
    sequence(:name)  { |n| "Person #{n}" }
    uid "a14722f2031e73c5f00a8aad4d0cc31c73ece97f7e70ac40"
    oauth_token "a14722f2031"
  end
end