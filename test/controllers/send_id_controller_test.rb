require 'test_helper'

class SendIdControllerTest < ActionDispatch::IntegrationTest
  test "should get send" do
    get send_id_send_url
    assert_response :success
  end

end
