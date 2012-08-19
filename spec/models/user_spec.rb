require 'spec_helper'

describe User do
  before { @user = User.new(provider: "foursquare",
                            uid: "a14722f2031e73c5f00a8aad4d0cc31c73ece97f7e70ac40",
                            oauth_token: "a14722f2031") }
  subject { @user }

  it { should respond_to(:provider) }
  it { should respond_to(:uid) }
  it { should respond_to(:name) }
  it { should respond_to(:oauth_token) }
  it { should respond_to(:oauth_expires_at) }

  it { should be_valid }
end
