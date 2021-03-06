class Api::V1::CompaniesController < ApplicationController
    # before_action :company_authorized, only: [:auto_login]
    
    def index
        companies = Company.all
       
        # render json: companies.to_json(include: [:rvs])
        render json: companies, status: 200
    end
  
    # REGISTER
    def create
        company = Company.new(company_params)
        if company.save
        # binding.pry
        # if company.save
          
        render json: {company: company}, status: 200

        else
            render json: {errors: "error found"}
        end
            
        # else
        #     render json: {error: company.errors.full_messages}, status: :unprocessable_entity
        # end
    end

    def show
        company = Company.find_by(id: params[:id])
        if company
            render json: company, status: 200
        else
            # render json: company.errors, status: :unprocessable_entity 
            render json: {message: "No company found!"}
        end
    end

    def destroy 
        company = Company.find_by(id: params[:id])
        company.destroy
        
        # if company
        #     company.delete
        # else
        #     render json: {message: "no company found"}
        # end
    end

  # LOGGING IN
#   def login
#     company = Company.find_by(email: params[:email])

#     if company && company.authenticate(params[:password])
#       token = encode_token({company_id: company.id})
#       render json: {company: company, token: token}
#     else
#       render json: {error: "Invalid username or password"}
#     end
#   end


#   def auto_login
#     render json: company
#   end


private
    def company_params
        params.require(:company).permit(:name, :email, :password, :address, :city, :state, :zipcode, :phonenumber, :building_number, rv_attributes: [
            :name, :capacity, :rate_per_day, :image_link]   
        )
    end

end
