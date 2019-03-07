class ApplicationController < ActionController::API
  #Used --api flag/suffix which will not create views folders anymore
  #Tokens and sessions not included by default
  #Adding token authentication back in with following command
  include ActionController::HttpAuthentication::Token::ControllerMethods
end
