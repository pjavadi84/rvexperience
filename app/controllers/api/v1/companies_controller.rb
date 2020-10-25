class Api::V1::CompaniesController < ApplicationController
    # before_action :authenticate_company!
    

    def index
        @companies = Company.all
        render json: @companies.to_json, status: 200
    end

    def new
        @company = Company.new
        @rv = @company.rvs.build
        # @reservation = @company.reservations.build
    end

    def create
        @company = Company.new(company_params)
        if @company.save
            render json: @company.to_json, status: :created
        else
            render json: @company.errors, status: :unprocessable_entity
        end
    end

    def show
        # binding.pry
        @company = Company.find_by(id: params[:id])
        options = {include: [:rvs]}
        if @company
            render json: CompanySerializer.new(@company).serialized_json
        else
            render json: {message: "No company found!"}
        end
    end

    
    def update
        @company = Company.find(params[:id])
        @company.update(company_params)
    end

    def destroy
        @company = Company.find_by_id(params[:id])
        @company.destroy
    end

    # def rvs_index
    #     @company = Company.find(params[:id])
    #     @rvs = @company.rvs
    #     render json: @rvs, status: 200
    # end

private
    def company_params
        params.require(:company).permit(:name, :address, :city, :state, :zipcode, :phonenumber, :building_number, rv_attributes: [
            :name,
            :capacity,
            :rate_per_day
                # reservation_attributes: [
                #     :start_date,
                #     :end_date,
                #     :pickup_location,
                #     :dropoff_location,
                #     :guest_quantity,
                #     :rental_duration,
                #     :price_per_night,
                #     :subtotal,
                #     :tax,
                #     :coupon_code,
                #     :discount_price,
                #     :additional_notes
                # ]
        ]
            
        )
    end

end
