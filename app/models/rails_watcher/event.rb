# fields in database:
# title
# status
# kind
# description
# data
# user_login
# user_ip

module RailsWatcher
  class Event < ApplicationRecord
    self.table_name = 'watcher_events'
    validates :title, presence: true

    scope :success, -> { where(status: 'success') }
    scope :error, -> { where(status: 'error') }

    scope :manual, -> { where(kind: 'manual') }
    scope :automatical, -> { where(kind: 'automatical') }

    def show_ip
      user_ip.blank? ? '---' : user_ip
    end

    def self.kinds
      arr = []
      RailsWatcher::Event.all.map { |e| e.kind }.uniq.each do |x|
        arr << [I18n.t("rails_watcher.kinds.#{x}"), x]
      end
      arr
    end

    def self.statuses
      arr = []
      RailsWatcher::Event.all.map { |e| e.status }.uniq.each do |x|
        arr << [I18n.t("rails_watcher.statuses.#{x}"), x]
      end
      arr
    end
  end
end
