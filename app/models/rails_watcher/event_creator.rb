module RailsWatcher
  class EventCreator
    def self.start(data)
      obj = RailsWatcher::Event.new
      obj.title = data[:title]
      obj.status = data[:status] || 'success'
      obj.kind = data[:kind] || 'automatical'
      obj.description = data[:description]
      obj.data = data[:data].inspect
      obj.user_login = data[:user_login]
      obj.user_ip = data[:user_ip]
      obj.save!
    end
  end
end
