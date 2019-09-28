# frozen_string_literal: true

# it should move to a initializer
class ActionDispatch::Routing::Mapper
  include RoutesSplitter
end

Rails.application.routes.draw do
end
