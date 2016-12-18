require File.expand_path("../boot", __FILE__)

require "rails/all"

Bundler.require(*Rails.groups)

module RailsApiStarter
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.autoload_paths << Rails.root.join("lib")

    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins ['localhost:5000', 'localhost:8080', 'andela-awards.herokuapp.com']
        resource '*', :headers => :any, :methods => [:get, :post, :options]
      end
    end
  end
end
