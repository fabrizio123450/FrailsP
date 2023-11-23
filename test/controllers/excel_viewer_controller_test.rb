require "test_helper"

class ExcelViewerControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get excel_viewer_show_url
    assert_response :success
  end
end
