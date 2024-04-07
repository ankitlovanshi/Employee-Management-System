require "test_helper"

class StatusControllerTest < ActionDispatch::IntegrationTest
  test "should get scaffold" do
    get status_scaffold_url
    assert_response :success
  end
end
