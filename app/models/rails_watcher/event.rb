# fields in database:
# title
# status
# type
# description
# data
# user_login
# user_ip

module RailsWatcher
  class Event < ApplicationRecord
    self.table_name = 'watcher_events'
    validates :title, presence: true

    scope :success, -> { where(status: 'Success') }
    scope :error, -> { where(status: 'Error') }

    scope :manual, -> { where(type: 'Manual') }
    scope :automatical, -> { where(type: 'Automatical') }

    def show_ip
      user_ip.blank? ? '---' : user_ip
    end
  end
end
