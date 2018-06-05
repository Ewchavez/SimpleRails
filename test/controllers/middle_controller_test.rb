require 'test_helper'

class MiddleControllerTest < ActionDispatch::IntegrationTest
  test "should get verificar" do
    get middle_verificar_url
    assert_response :success
  end

end
