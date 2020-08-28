class Api::V1::CompaniesController < ApplicationController
    before_action :authenticate_company!
    

    def index
        @companies = Company.all
        render json: @companies, status: 200
    end

    def show
        @company = Company.find(params[:id])
    end

    def new
        @company = Company.new
    end

    def create
        @company = Company.new(company_params)
        if @company.save
            render json: @company, status: 200
        else
            render json: @companies, status: 200
        end
    end

    def update
        @company = Company.find(params[:id])
        @company.update(company_params)
    end

    def destroy
        @company = Company.find(params[:id])
        @company.destroy
    end

    def rvs_index
        @company = Company.find(params[:id])
        @rvs = @company.rvs
        render json: @rvs, status: 200
    end

    # def rv_new
        
    # end

private
    def company_params
        params.require(:company).permit(:name, :address, :city, :state, :zipcode, :phone_number, :business_open, :business_close, :operating_days, :email)
    end

end
