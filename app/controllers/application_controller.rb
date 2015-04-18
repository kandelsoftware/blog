class ApplicationController < ActionController::Base

  protect_from_forgery
    helper :all
    before_filter :campain1
    before_filter :campain2
    before_filter { |c| Authorization.current_user = c.current_user }

def permission_denied
    flash[:error] = "Sorry, you are not allowed to access that page."
    redirect_to root_url
  end

  def campain1
    session[:descount] ||=params[:utm_source] if carta_descount

  end
  def campain2
    session[:free] ||=params[:utm_source] if carta_primero_free
  end

private

def carta_descount
params[:utm_source]=="facebook" || params[:utm_source]=="google" || params[:utm_source]=="atraplo"

end
def carta_primero_free
params[:utm_source]=="facebook_free" || params[:utm_source]=="google_free" || params[:utm_source]=="atraplo_free"

end


end

