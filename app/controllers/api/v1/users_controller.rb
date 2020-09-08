class Api::V1::UsersController < ApplicationController

    def index 
        @users = User.all
        render json: @users, status: 200
    end

    def new
        @user = User.new
        @reservation = @user.reservations.build
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "successfully created a user"
            render json: @user, status: 200
        else
            render json: @users, status: 200
        end
    end

    def show
        # @user = User.find_by_id(params[:id])
        # render json: @user, status: 200
        def show
            @user = User.find(params[:id])
            unless @user == current_user
              redirect_to :back, :alert => "Access denied."
            end
        end
    end
    
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
    end

    def destroy
        @user = User.find_by_id(params[:id])
        @user.destroy
    end

    private 
        def user_params
            params.require(:user).permit(:first_name, :last_name, :age, :number_of_guests, :address, :city, :state, :country, :zipcode, :email, :phone_number, reservations_attributes:[
                :start_date, :end_date, :pickup_location, :dropoff_location, :guest_quantity, :rental_duration, :price_per_night, :subtotal, :total, :tax, :coupon_code, :discount_price, :additional_notes, rvs_attributes: [
                    :make, :model, :length, :width, :height, :fuel_type, :capacity, :air_conditioner, :jacuzzi, :shower, :washer_dryer, :internet, :current_mile, :plate_number, :vin_number
                    ]
            ])
        end

    
end