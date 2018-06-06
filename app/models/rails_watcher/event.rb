module RailsWatcher
  class Event < ApplicationRecord
    validates :title, presence: true
  end
end
