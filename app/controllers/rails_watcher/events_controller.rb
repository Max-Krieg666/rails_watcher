require_dependency 'rails_watcher/application_controller'

module RailsWatcher
  class EventsController < ApplicationController
    before_action :set_event, only: [:show]

    def index
      @kinds = RailsWatcher::Event.kinds
      @statuses = RailsWatcher::Event.statuses
      @events =
        if search_params
          Finder
            .new(search_params)
            .apply_search
            .order(created_at: :desc)
            .limit(params[:limit] || 100)
            .page(params[:page] || 1)
        else
          RailsWatcher::Event.order(created_at: :desc).limit(100).page(params[:page] || 1)
        end
    end

    def show; end

    private

    def search_params
      return if params.blank?
      params.permit(
        :title, :status, :kind, :user_login, :user_ip
      )
    end

    def set_event
      @event = RailsWatcher::Event.find_by_id(params[:id])
    end
  end
end
