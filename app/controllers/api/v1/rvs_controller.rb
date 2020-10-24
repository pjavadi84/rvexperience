class Api::V1::RvsController < ApplicationController

    def index
        rvs = Rv.all
        render json: RvSerializer.new(rvs)
    end

    def new
        @companies = Company.all
        @company = Company.find(rv_params[:company_id])
        if @company
            @rv = Rv.new(rv_params)
        else
            render json: RvSerializer.new(rvs).to_serialized_json
        end
    end

    def create

        @company = Company.find(rv_params[:company_id])
        if @company
            @rv = @company.rvs.create(rv_params)
            render json: @rv, status: 200
        else
            render json: RvSerializer.new(rvs).to_serialized_json
        end
    end

    def show 
        rv = Rv.find_by(id: params[:id])
        options = {include: [:company]}
        if rv
            # render json: RvSerializer.new(rv).to_serialized_json
            render json: RvSerializer.new(rv, options)
        else
            render json: {message: "No RV found!"}
        end
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
        # binding.pry
        # params.require(:rv).permit(:name, :capacity, :rate_per_day, :company_id)
        params.permit(:name, :capacity, :rate_per_day, :company_id)
    end
end
