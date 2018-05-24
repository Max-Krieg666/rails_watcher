require 'rails/generators'
require 'rails/generators/migration'

class EventsGenerator < Rails::Generators::Base
  include Rails::Generators::Migration
  source_root File.expand_path('../templates', __FILE__)

  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def create_model_file
    template "event.rb", "app/models/event.rb"
    migration_template "create_watcher_events.rb", "db/migrate/create_watcher_events.rb"
  end
end