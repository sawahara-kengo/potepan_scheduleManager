require "test_helper"

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get schedules_home_url
    assert_response :success
  end
end
