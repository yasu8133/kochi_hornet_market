require 'test_helper'

class ExhibitionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exhibition_index_url
    assert_response :success
  end

end
