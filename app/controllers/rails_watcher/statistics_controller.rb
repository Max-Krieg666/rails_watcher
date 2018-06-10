module RailsWatcher
  class StatisticsController < ApplicationController
    def index
      @daily = RailsWatcher::Statistics.daily_data(Date.today)
      @monthly = RailsWatcher::Statistics.monthly_data
      @yearly = RailsWatcher::Statistics.yearly_data
      @all_time = RailsWatcher::Statistics.all_time_data
    end
  end
end
