class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at) unless auth.credentials.expires_at.nil?
      user.save!
    end
  end

  def initialize(attributes = nil, options = {})
    super(attributes, options)
    @client = Foursquare2::Client.new(:oauth_token => oauth_token) unless oauth_token.nil?
  end

  def foursquare_user
    @client.user("self")
  end

  def requests
    @client.user_requests
  end

  def friends
    @client.user_friends("self").items
  end
end
