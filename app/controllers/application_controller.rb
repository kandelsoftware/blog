class ApplicationController < ActionController::Base

  protect_from_forgery
    helper :all
    before_filter :campain
    before_filter { |c| Authorization.current_user = c.current_user }

def permission_denied
    flash[:error] = "Sorry, you are not allowed to access that page."
    redirect_to root_url
  end

  def campain
   session[:utm_source] ||=params[:utm_source] if params[:utm_source]=="facebook"
  end



end

