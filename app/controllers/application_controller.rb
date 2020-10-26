# class ApplicationController < ActionController::API
#     before_action :company_authorized

#     def encode_token(payload)
#         JWT.encode(payload, 'my_s3cr3t')
#     end

#     def auth_header
#         request.headers['Authorization']
#     end

#     def decode_token
#         if auth_header
#         token = auth_header.split(' ')[1]
#         begin
#             JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
#         rescue JWT::DecodeError
#             nil
#         end
#         end
#     end

#     def current_company
#         if decode_token
#         # JWT.decode => [{ "user_id"=> 1 }, { "alg"=>"HS256" }]
#         # [0] gives us the payload { "user_id"=> 1 }
#         company_id = decode_token[0]['company_id']
#         company = Company.find_by(id: company_id)
#         end
#     end

#     def logged_in?
        # !!current_company
#         # returns a boolean instead of truthy user object
#     end

#     def company_authorized
#         render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
#     end
#         # before_action :store_user_location!, if: :storable_location?
#         # acts_as_token_authentication_handler_for User, only: [:create, :update, :destroy], fallback: :none
#         # acts_as_token_authentication_handler_for Company, only: [:create, :update, :destroy], fallback: :none
#         # before_action :authenticate_user!

#         # private
#         # def store_user_location!
#         #     # :user is the scope we are authenticating
#         #     store_location_for(:user, request.fullpath)
#         # end


#         # def store_user_location!
#         #     # :user is the scope we are authenticating
#         #     store_location_for(:user, request.fullpath)
#         # end

#         # def after_sign_in_path_for(resource_or_scope)
#         #     stored_location_for(resource_or_scope) || super
#         # end

#         # def after_successful_token_authentication
#         #     # Make the authentication token to be disposable - for example
#         #     renew_authentication_token!
#         # end
        
#         # before_action :configure_permitted_parameters, if: :devise_controller?

#         # private

#         # def configure_permitted_parameters
#         #     devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
#         #     devise_parameter_sanitizer.permit(:account_update, keys: [:name])
#         # end
# end
class ApplicationController < ActionController::API
    before_action :company_authorized
  
    def encode_token(payload)
      JWT.encode(payload, 's3cr3t')
    end
  
    def auth_header
      # { Authorization: 'Bearer <token>' }
      request.headers['Authorization']
    end
  
    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        # header: { 'Authorization': 'Bearer <token>' }
        begin
          JWT.decode(token, 's3cr3t', true, algorithm: 'HS256')
        rescue JWT::DecodeError
          nil
        end
      end
    end
  
    def logged_in_company
      if decoded_token
        company_id = decoded_token[0]['company_id']
        company = Company.find_by(id: company_id)
      end
    end
  
    def logged_in?
      !!logged_in_company
    end
  
    def company_authorized
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
  
  end
