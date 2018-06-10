module RailsWatcher
  class Api::V1::StatisticsController < Api::V1::ApplicationController
    def daily
      date = params[:date] || Date.today
      events_data = RailsWatcher::Statistics.daily_data(date)
      render json: events_data.to_json
    end

    def monthly
      events_data = RailsWatcher::Statistics.monthly_data
      render json: events_data.to_json
    end
    
    def yearly
      events_data = RailsWatcher::Statistics.yearly_data
      render json: events_data.to_json
    end
    
    def all_time
      events_data = RailsWatcher::Statistics.all_time_data
      render json: events_data.to_json
    end
  end
end
