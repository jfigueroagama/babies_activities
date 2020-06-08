class Api::AssistantsController < ApplicationController
    before_action :set_assistant, only: [:show, :update, :destroy]

    # GET api/assistants
    def index
        @assistants = Assistant.all
        json_response(@assistants)
    end
    
    private

    def assistant_params
        params.permit(:name, :address, :phone, :group)
    end

    def set_assistant
        @assistant = Assistant.find(params[:id])
    end
end