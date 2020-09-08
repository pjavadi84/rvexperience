class Api::V1::RvsController < ApplicationController
    def index
        if params[:company_id]
            @rvs = Company.find(params[:company_id]).rvs
        else
            @rvs = Rv.all
        end
    end

    def new
        if params[:company_id] && Company.exists?(params[:company_id])
            render json: @rvs
        else
            @rv = Rv.new(company_id: params[:company_id])
        end
        # @rv = Rv.new(company_id: params[:company_id])
    end

    def create
        @rv = Rv.new(rv_params)
        if @rv.save
            render json: @rv, status: 200
        else
            render json: @rvs, status: 200
        end
    end

    def show 
        @rv = Rv.find_by_id(params[:id])
        render json: @rv, status: 200
    end

    # I AM NOT SURE HOW TO SET UP EDIT ACTION FOR RVS"
    # def edit
    #     company = Company.find_by_id(params[:company_id])
    #     if company && !company.nil?
    #             render json: @rvs, status: 200
    #         else
    #             @rv = company.rvs.find_by(id: params[:id])
    #             render json: company.rvs
    #         end
    #     else
    #         @rv = Rv.find(params[:id])
    #     end
    # end

    def update
        @company = Company.find_by_id(params[:company_id])
        if @company && !@company.nil?
            @rv = @company.rvs.find_by_id(params[:id])
            @rv.update(rv_params)
            render json: @rv, status: 200
        else
            render json: @rvs, status: 200
        end
    end

    def destroy
        @rv = Rv.find_by_id(params[:id])
        @rv.destroy
    end

    

    private 

    def rv_params
        params.require(:rv).permit(:make, :model, :length, :width, :height, :fuel_type, :capacity, :air_conditioner, :jacuzzi, :shower, :washer_dryer, :internet, :current_mile, :plate_number, :vin_number, :company_id, :image)
    end
end
