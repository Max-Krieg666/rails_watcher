require_dependency "rails_watcher/application_controller"

module RailsWatcher
  class EventsController < ApplicationController
    before_action :set_event, only: [:show]

    def index
      @events = 
        if search_params
          Search.new(search_params).apply_search.order(created_at: :desc).limit(params[:limit] || 100).page(params[:page])
        else
          RailsWatcher::Event.all.order(created_at: :desc).limit(100)
        end
    end

    def show
    end

    private

    def search_params
      return if params[:search].blank?
      params.require(:search).permit(
        :title, :description, :type
      )
    end

    def set_event
      @event = RailsWatcher::Event.find_by_id(params[:id])
    end
  end
end