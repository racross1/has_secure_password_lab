class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

#all the following copied over from Login required lab as reference 

# helper_method :current_user

#   def current_user
#     if session[:name] == nil
#       nil
#     else 
#       session[:name] ||= []
#     end
#   end 