module RailsWatcher
  class Api::V1::EventsController < Api::V1::ApplicationController
    before_action :set_event, only: [:show]

    def index
      @events = 
        if search_params
          Search.new(search_params).apply_search.order(created_at: :desc).limit(params[:limit] || 100)
        else
          RailsWatcher::Event.order(created_at: :desc).limit(100)
        end
      render json: @events.to_json
    end

    def show
      render json: @event.to_json
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