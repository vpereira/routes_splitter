class ActionDispatch::Routing::Mapper
  include RoutesSplitter
end

Rails.application.routes.draw do
  draw :api
end
