desc 'generate standart migrations'
namespace :rails_watcher do
  task :install do
    filename = File.join(File.dirname(__FILE__), 'migrations', 'migration.rb')
    current_time = Time.now.utc.strftime("%Y%m%d%H%M%S")

    new_filename = "#{current_time}_create_watcher_events.rb"
    target = Rails.root.join('db', 'migrate', new_filename)

    FileUtils.cp(filename, target)
    puts "Creating db/migrate/#{new_filename}"
  end
end
