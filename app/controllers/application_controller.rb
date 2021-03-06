class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :mobile_device?
  
  def check_for_mobile
    session[:mobile_override] = params[:mobile] if params[:mobile]
    prepare_for_mobile if mobile_device?
  end
  
  def mobile_device?
    if session[:mobile_override]
      session[:mobile_override] == "1"
    else
      # Season this regexp to taste. I prefer to treat iPad as non-mobile.
      (request.user_agent =~ /Mobile|webOS/) && (request.user_agent !~ /iPad/)
    end
   end
  
  def prepare_for_mobile
    prepend_view_path Rails.root + 'app' + 'views_mobile'
  end
  
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end
  
    
end
