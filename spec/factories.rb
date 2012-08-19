FactoryGirl.define do
  factory :user do
    provider "foursquare"
    sequence(:name)  { |n| "Person #{n}" }
    uid "35166090"
    oauth_token "N2BJDFEOBQSNOGTGUXUDZOE502244WP24OLO0DBVHTSQOWEB"
  end
end