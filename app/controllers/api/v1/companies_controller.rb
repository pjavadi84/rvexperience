class Api::V1::CompaniesController < ApplicationController
    before_action :company_authorized, only: [:auto_login]
    def index
        companies = Company.all 
        render json: companies, status: 200
    end
  # REGISTER
    def create
        company = Company.create(company_params)
        if company.valid?
        token = encode_token({company_id: company.id})
        render json: {company: company, token: token}
        else
        render json: {error: "Invalid username or password for company"}
        end
    end

  # LOGGING IN
  def login
    company = Company.find_by(email: params[:email])

    if company && company.authenticate(params[:password])
      token = encode_token({company_id: company.id})
      render json: {company: company, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end


  def auto_login
    render json: company
  end


private
    def company_params
        params.require(:company).permit(:name, :email, :password, :address, :city, :state, :zipcode, :phonenumber, :building_number, rv_attributes: [
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
