require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get post_url" do
    get page_post_url_url
    assert_response :success
  end

  test "should get redirect_url" do
    get page_redirect_url_url
    assert_response :success
  end

end
