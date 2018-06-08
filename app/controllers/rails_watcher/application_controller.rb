module RailsWatcher
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception

    # TODO remove application layout from GEM, before install
  end
end
