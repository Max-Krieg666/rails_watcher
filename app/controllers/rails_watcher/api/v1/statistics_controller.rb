module RailsWatcher
  class Api::V1::StatisticsController < Api::V1::ApplicationController
    def daily
      date = params[:date] || Date.today
      events_data = Statistics.daily_data(date)
      render json: events_data
    end

    def monthly
      events_data = Statistics.monthly_data
      render json: events_data
    end
    
    def yearly
      events_data = Statistics.yearly_data
      render json: events_data
    end
    
    def all_time
      events_data = Statistics.all_time_data
      render json: events_data
    end
  end
end