require "routes_splitter/railtie"

module RoutesSplitter
  extend ActiveSupport::Concern
  included do
    RoutesNotFound = Class.new(StandardError)

    def draw(routes_name)
      draw_route(routes_path("#{routes_name}_routes.rb")) || raise(RoutesNotFound.new(routes_path("#{routes_name}_routes.rb")))
    end

    # path should be configurable
    def routes_path(routes_file)
      Rails.root.join("app", "routes", routes_file)
    end

    def draw_route(path)
      if File.exist?(path)
        instance_eval(File.read(path)) 
        true
      else
        false
      end
    end
  end
end
