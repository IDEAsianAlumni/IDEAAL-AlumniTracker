class ApplicationController < ActionController::Base
        # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    @@current_year = "2022"

    protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :middle_name, :last_name, :email, :password) }
            devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :middle_name, :last_name, :email, :password) }
        end
end
