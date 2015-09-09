class SessionsController < ApplicationController
  
  def create_twitter
    auth = request.env["omniauth.auth"]
    session[:oauth_token] = auth.credentials.token
    session[:oauth_token_secret] = auth.credentials.secret
    session[:username] = auth.extra.access_token.params[:screen_name]
    redirect_to "/tweet", :notice => "サインイン！"
  end
  
  def destroy_twitter
    session[:oauth_token] = nil
    session[:oauth_token_secret] = nil
    session[:username] = nil
    redirect_to root_url, :notice => "サインアウト！"
  end
  
  def create_facebook
    
  end
  
  def destroy_facebook
    
  end
end