require 'test_helper'

class ProyectoControllerTest < ActionDispatch::IntegrationTest
  test "should get ver" do
    get proyecto_ver_url
    assert_response :success
  end

end
