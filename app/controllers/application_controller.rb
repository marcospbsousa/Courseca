class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!


before_filter :configure_permitted_parameters, if: :devise_controller?

      

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :userID, :email, :password, :avatar) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :userID, :email, :password, :current_password, :avatar) }
        end


def create
  @user = User.create( user_params )
end

def can_administer?
      current_user.try(:admin?)
    end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:users).permit(:avatar)
end

end
