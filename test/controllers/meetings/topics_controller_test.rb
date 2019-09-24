require 'test_helper'

class Meetings::TopicsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get meetings_topics_create_url
    assert_response :success
  end

  test "should get show" do
    get meetings_topics_show_url
    assert_response :success
  end

  test "should get new" do
    get meetings_topics_new_url
    assert_response :success
  end

end
