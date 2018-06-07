module RailsWatcher
  class Event < ApplicationRecord
    validates :title, presence: true

    def ip
      return user_ip unless user_ip.blank?
      '---'
    end
  end
end
