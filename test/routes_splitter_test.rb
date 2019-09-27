require 'test_helper'

class RoutesSplitter::Test < ActionDispatch::IntegrationTest
  test "home_with_splitter_accessible" do
    get root_path, params: { format: :json }
    assert_response :success
    assert_equal JSON.parse(response.body)['hello'], 'world'
  end
end
