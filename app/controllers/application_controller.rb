class ApplicationController < ActionController::API
    acts_as_token_authentication_handler_for User, only: [:create, :update, :destroy], fallback: :none
    acts_as_token_authentication_handler_for Company, only: [:create, :update, :destroy], fallback: :none

    private
    def after_successful_token_authentication
        # Make the authentication token to be disposable - for example
        renew_authentication_token!
    end
    
end
