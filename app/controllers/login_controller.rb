class LoginController < ApplicationController
  
  def login
      session[:user_id] = nil
      if request.post?
        user = User.authenticate(params[:username], params[:password])
        if user
          session[:user_id] = user.id
          redirect_to (:controller => "articles", :action =>"index")
        else
          flash[:notice] = "You do not belong here."
        end
      else
        respond_to do |format|
          format.html
        end
      end
  end
  
end