class CreateWatcherEvents < ActiveRecord::Migration
  # Create table
  def self.up
    create_table :watcher_events do |t|
      t.string :title,  null: false
      t.string :status, default: 'Success'
      t.string :type
      t.text   :description
      t.text   :data
      t.string :user_login
      t.string :user_ip

      t.timestamps null: false
    end
  end
  # Drop table
  def self.down
    drop_table :watcher_events
  end
end