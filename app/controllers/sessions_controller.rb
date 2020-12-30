class SessionsController < ApplicationController
  def new
  end

  def create
        @user = User.find_by(name: params[:user][:name])
        return head(:forbidden) unless @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
  end 
end




#all the following copied over from Login required lab as reference 

# def new
# end

# def create
#   if params[:name].blank?
#     redirect_to new_session_path
#   else 
#     session[:name] = params[:name]
#     redirect_to '/'
#   end 
# end

# def destroy
# session.delete :name
# redirect_to '/'
# end
