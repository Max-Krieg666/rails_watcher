RailsWatcher::Engine.routes.draw do
  mount RailsWatcher::Engine => "/watcher/events"

  resources :events
end
