class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :active_user, if: :devise_controller?

  private

  def logged_in_user
    unless logged_in?
      flash[:danger] = 'Please log in'
      redirect_to login_url
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :phone_number])
    # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :phone_number) }
  end

  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :user
      new_user_session_path
    else
      redirect_to :back
    end 
  end
  
  def active_user
    if current_user && current_user.active == false
       sign_out_and_redirect(current_user)
       flash[:danger] = 'Ваш аккаунт не активирован пожалуйста обратитесь в тех.поддержку'
    end
  end

  def gmap 
    @users = User.all
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end
  end
end
