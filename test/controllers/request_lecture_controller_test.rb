require "test_helper"

class RequestLectureControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get request_lecture_index_url
    assert_response :success
  end
end
