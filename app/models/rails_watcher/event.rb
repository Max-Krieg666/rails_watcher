module RailsWatcher
  class Event < ApplicationRecord
    def ip
      return user_ip unless user_ip.blank?
      '---'
    end
  end
end
