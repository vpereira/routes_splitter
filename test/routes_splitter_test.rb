# frozen_string_literal: true

require 'test_helper'

class RoutesSplitter::Test < ActionDispatch::IntegrationTest
  test 'home_path exists' do
    Rails.application.routes.draw { draw 'api' }
    assert_routing root_path, controller: 'application', action: 'home'
  end

  test 'home_with_splitter_accessible' do
    Rails.application.routes.draw { draw 'api' }
    get root_path, params: { format: :json }
    assert_response :success
    assert_equal JSON.parse(response.body)['hello'], 'world'
  end

  test 'route that doesnt exist' do
    assert_raise(RoutesSplitter::RoutesNotFound) { Rails.application.routes.draw { draw 'foo' } }
  end
end
