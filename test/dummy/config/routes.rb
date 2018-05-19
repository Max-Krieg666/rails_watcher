Rails.application.routes.draw do
  mount RailsWatcher::Engine => "/rails_watcher"
end
