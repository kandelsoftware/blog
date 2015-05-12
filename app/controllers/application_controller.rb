class ApplicationController < ActionController::Base

  protect_from_forgery
  before_filter :set_locale
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

def set_locale
I18n.locale=params[:locale] if params[:locale].present?
end

def default_url_options(options = {})
  {locale: I18n.locale}
end

def include_i18n_calendar_javascript
  content_for :head do
    javascript_include_tag case I18n.locale
      when :en then "jquery.ui.datepicker"
      when :es then "jquery.ui.datepicker-es.js"
      else raise ArgumentError, "Locale error"
    end
  end
end
end

