class Api::V1::CompaniesController < ApplicationController
    before_action :authenticate_company!
    

    def index
        @companies = Company.all
        render json: @companies, status: 200
    end

    def new
        @company = Company.new
        @rv = @company.rvs.build
        # @reservation = @company.reservations.build
    end

    def create
        @company = Company.new(company_params)
        if @company.save
            render json: @company, status: 200
        else
            render json: @companies, status: 200
        end
    end

    def show
        @company = Company.find_by_id(params[:id])
        render json: @company, status: 200
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
        params.require(:company).permit(:name, :address, :city, :state, :zipcode, :phone_number, :business_open, :business_close, :operating_days, :email, rv_attributes: [
            :make,
            :model, 
            :length,
            :width,
            :height,
            :fuel_type,
            :capacity,
            :air_conditioner,
            :jacuzzi,
            :shower,
            :washer_dryer,
            :internet,
            :current_mile,
            :plate_number,
            :vin_number,
                reservation_attributes: [
                    :start_date,
                    :end_date,
                    :pickup_location,
                    :dropoff_location,
                    :guest_quantity,
                    :rental_duration,
                    :price_per_night,
                    :subtotal,
                    :tax,
                    :coupon_code,
                    :discount_price,
                    :additional_notes
                ]
            ]
            
        )
    end

end
