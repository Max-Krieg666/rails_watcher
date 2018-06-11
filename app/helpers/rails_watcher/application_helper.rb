module RailsWatcher
  module ApplicationHelper
    def progress_bar_modulate_daily(data)
      @daily_full_count = data[:full_count]
      @daily_error = data[:error]
      @daily_error_percentage = ((@daily_error.to_f / @daily_full_count) * 100).round(2)
      @daily_success = data[:success]
      @daily_success_percentage = ((@daily_success.to_f / @daily_full_count) * 100).round(2)
      @daily_manual = data[:manual]
      @daily_manual_percentage = ((@daily_manual.to_f / @daily_full_count) * 100).round(2)
      @daily_automatical = data[:automatical]
      @daily_automatical_percentage = ((@daily_automatical.to_f / @daily_full_count) * 100).round(2)
    end

    def progress_bar_modulate_monthly(data)
      @monthly_full_count = data[:full_count]
      @monthly_error = data[:error]
      @monthly_error_percentage = ((@monthly_error.to_f / @monthly_full_count) * 100).round(2)
      @monthly_success = data[:success]
      @monthly_success_percentage = ((@monthly_success.to_f / @monthly_full_count) * 100).round(2)
      @monthly_manual = data[:manual]
      @monthly_manual_percentage = ((@monthly_manual.to_f / @monthly_full_count) * 100).round(2)
      @monthly_automatical = data[:automatical]
      @monthly_automatical_percentage = ((@monthly_automatical.to_f / @monthly_full_count) * 100).round(2)
    end

    def progress_bar_modulate_yearly(data)
      @yearly_full_count = data[:full_count]
      @yearly_error = data[:error]
      @yearly_error_percentage = ((@yearly_error.to_f / @yearly_full_count) * 100).round(2)
      @yearly_success = data[:success]
      @yearly_success_percentage = ((@yearly_success.to_f / @yearly_full_count) * 100).round(2)
      @yearly_manual = data[:manual]
      @yearly_manual_percentage = ((@yearly_manual.to_f / @yearly_full_count) * 100).round(2)
      @yearly_automatical = data[:automatical]
      @yearly_automatical_percentage = ((@yearly_automatical.to_f / @yearly_full_count) * 100).round(2)
    end

    def progress_bar_modulate_all_time(data)
      @all_time_full_count = data[:full_count]
      @all_time_error = data[:error]
      @all_time_error_percentage = ((@all_time_error.to_f / @all_time_full_count) * 100).round(2)
      @all_time_success = data[:success]
      @all_time_success_percentage = ((@all_time_success.to_f / @all_time_full_count) * 100).round(2)
      @all_time_manual = data[:manual]
      @all_time_manual_percentage = ((@all_time_manual.to_f / @all_time_full_count) * 100).round(2)
      @all_time_automatical = data[:automatical]
      @all_time_automatical_percentage = ((@all_time_automatical.to_f / @all_time_full_count) * 100).round(2)
    end
  end
end
