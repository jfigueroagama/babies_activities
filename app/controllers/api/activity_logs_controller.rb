class Api::ActivityLogsController < ApplicationController
    before_action :set_activity_log, only: [:show, :update, :destroy]

    # GET api/activity_logs
    def index
        @activity_logs = ActivityLog.all
        json_response(@activity_logs)
    end

    def create
        @activity_logs = ActivityLog.new(activity_log_params)
        @activity_logs.save!
        json_response(@activity_logs, :created)
    end

    def update
        @activity_logs.update(activity_log_params)
    end
    
    private

    def activity_log_params
        params.permit(:start_time, :stop_time, :duration, :name, :comment, :activity_id, :assistant_id, :baby_id)
    end

    def set_activity_log
        @activity_logs = ActivityLog.find(params[:id])
    end
end