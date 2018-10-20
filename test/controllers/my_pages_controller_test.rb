require 'test_helper'

class MyPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get my_pages_new_url
    assert_response :success
  end

  test "should get create" do
    get my_pages_create_url
    assert_response :success
  end

  test "should get index" do
    get my_pages_index_url
    assert_response :success
  end

  test "should get show" do
    get my_pages_show_url
    assert_response :success
  end

end
