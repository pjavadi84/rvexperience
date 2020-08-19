class Api::v1::UserController < ApplicationController
    before_action :authenticate_user!


    def index 
        @users = User.all
        render json: @users, status: 200
    end

    def show
        @user = User.find(params[:id])
        render json: @user, status: 200
    end
    
    def new
        @user = User.new
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "successfully created a user"
            render json: @user, status: 200
        else
            render json: @users, status: 400
        end
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)

    end

    def destroy 

    end

    private 
        def user_params
            params.require(:user).permit(:first_name, :last_name, :age, :number_of_guests, :address, :city, :state, :country, :zipcode, :email, :phone_number)
        end

        def signup_params
            params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
        end

        def account_update_params
            params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
        end
    end


end
