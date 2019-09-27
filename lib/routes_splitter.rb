require "routes_splitter/railtie"

module RoutesSplitter
  extend ActiveSupport::Concern
  included do
    def draw(routes_name)
      instance_eval(File.read(Rails.root.join("app/routes/#{routes_name}_routes.rb")))
    end
  end
end
