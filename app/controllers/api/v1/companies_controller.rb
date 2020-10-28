class Api::V1::CompaniesController < ApplicationController
    before_action :company_authorized, only: [:auto_login]
    
    def index
        companies = Company.all
        # render json: companies.to_json(include: [:rvs])
        render json: companies.to_json(include: [:rvs])
    end
  
    # REGISTER
    def create
        company = Company.new(company_params)
        # rvs = params[:rvs].map{ |rv| rv.find_or_create_by(name: rv)}
        if company.valid?
        #     company.rvs << rvs
            company.save
            token = encode_token({company_id: company.id})
            render json: {company: company, token: token}
        else
            render json: {error: "Invalid username or password for company"}
        end
    end

    def show
        company = Company.find_by(id: params[:id])
        if company
            render json: CompanySerializer.new(company), status: 200
        else
            render json: company.errors, status: :unprocessable_entity 
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
            :rate_per_day,
            :image_link
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
