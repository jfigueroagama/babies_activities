class Api::ActivitiesController < ApplicationController
    before_action :set_activity, only: [:show, :update, :destroy]

    # GET api/activities
    def index
        @activities = Activity.all
        json_response(@activities)
    end

    private

    def activity_params
        params.permit(:name, :description)
    end

    def set_activity
        @activity = Activity.find(params[:id])
    end
end