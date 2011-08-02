class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if (user.nil?)
      flash.now[:error] = "Invalid email/password combination"
      @title = 'Sign in'
      render 'new'
    else
      # Handle successful signin here
      sign_in(user)
      redirect_to user
    end
  end
  
  def destroy
  end

#  def sign_in(user)
#    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
#    current_user = user
#  end

end
