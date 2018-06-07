module RailsWatcher
  class Event < ApplicationRecord
    self.table_name = 'watcher_events'
    validates :title, presence: true

    def ip
      return user_ip unless user_ip.blank?
      '---'
    end
  end
end
