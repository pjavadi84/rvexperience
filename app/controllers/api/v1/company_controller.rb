class Api::v1::CompanyController < ApplicationController
    before_action :authenticate_company!

    def index
        @companies = Company.all
        render json: @companies, status: 200
    end

    def show
        @company = Company.find(params[:id])
    end

    def rvs_index
        @company = Company.find(params[:id])
        @rvs = @company.rvs
        render json: @rvs, status: 200
    end

    private
        def company_params
            params.require(:company).permit(:name, :address, :city, :state, :zipcode, :phone_number, :business_open, :business_close, :operating_days, :email)
        end

end
