class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password,
      :password_confirmation, :remember_me ,:first_name, :last_name, :db, :sex, :mother_fn, :mother_ln, :father_fn, :bg, :tel1 , :tel2, :address, :prime_contact_name, :prime_contact_tel)}


    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password,
      :password_confirmation, :remember_me ,:first_name, :last_name, :db, :sex, :mother_fn, :mother_ln, :father_fn, :bg, :tel1 , :tel2, :address, :prime_contact_name, :prime_contact_tel)}
  end
end
