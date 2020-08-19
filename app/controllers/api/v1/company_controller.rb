class Api::v1::CompanyController < ApplicationController
    before_action :authenticate_company!

    def index
        @companies = Company.all
        render json: @companies, status: 200
    end

    private
        def company_params
            
        end

end
