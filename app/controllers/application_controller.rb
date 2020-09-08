class ApplicationController < ActionController::API

    # before_action :store_user_location!, if: :storable_location?
    # acts_as_token_authentication_handler_for User, only: [:create, :update, :destroy], fallback: :none
    # acts_as_token_authentication_handler_for Company, only: [:create, :update, :destroy], fallback: :none
    # before_action :authenticate_user!

    # private
    # def store_user_location!
    #     # :user is the scope we are authenticating
    #     store_location_for(:user, request.fullpath)
    # end


    # def store_user_location!
    #     # :user is the scope we are authenticating
    #     store_location_for(:user, request.fullpath)
    # end

    # def after_sign_in_path_for(resource_or_scope)
    #     stored_location_for(resource_or_scope) || super
    # end

    # def after_successful_token_authentication
    #     # Make the authentication token to be disposable - for example
    #     renew_authentication_token!
    # end
    
    # before_action :configure_permitted_parameters, if: :devise_controller?

    # private

    # def configure_permitted_parameters
    #     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    #     devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    # end
end
