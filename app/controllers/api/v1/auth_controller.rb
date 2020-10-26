class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized_company, only: [:create]
  
    def create
      company = Company.find_by(email: company_login_params[:email])
      if company && Company.authenticate(company_login_params[:password])
        token = encode_token({ company_id: company.id })
        render json: { company: CompanySerializer.new(company), jwt: token }, status: :accepted
      else
        render json: { message: 'Invalid email or password' }, status: :unauthorized
      end
    end
  
    private
  
    def company_login_params
      # params { user: {email: 'missy@missyelliott.com', password: 'misdemeanor' } }
      params.require(:company).permit(:email, :password)
    end
  
  end