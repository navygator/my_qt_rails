OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET']
  provider :foursquare, "B3ZHOWCVIDJJVGXSAQCJLG235BB5V3RG4BEZ5GIZCCM5RH31",
           "IGVDU3YKCINXB0MOFIYA0MCUN1PJQABVXMHLLTIITKEGWNL4"
end
