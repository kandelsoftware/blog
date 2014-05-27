class ApplicationController < ActionController::Base
  protect_from_forgery
    helper :all

  before_filter { |c| Authorization.current_user = c.current_user }
def permission_denied
    flash[:error] = "Sorry, you are not allowed to access that page."
    redirect_to root_url
  end
end
