class Api::BabiesController < ApplicationController
    before_action :set_baby, only: [:show, :update, :destroy]

     # GET api/babies
    def index
        @babies = Baby.all
        json_response(@babies)
        #render json: @babies
    end

    def show
        json_response(@baby)
    end

    private

    def baby_params
        params.permit(:name, :birthday, :mothers_name, :fathers_name, :sddress, :phone)
    end

    def set_baby
        @baby = Baby.find(params[:id])
    end
end