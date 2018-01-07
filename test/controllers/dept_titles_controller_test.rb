require 'test_helper'

class DeptTitlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dept_titles_index_url
    assert_response :success
  end

  test "should get new" do
    get dept_titles_new_url
    assert_response :success
  end

  test "should get create" do
    get dept_titles_create_url
    assert_response :success
  end

  test "should get edit" do
    get dept_titles_edit_url
    assert_response :success
  end

  test "should get update" do
    get dept_titles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get dept_titles_destroy_url
    assert_response :success
  end

end
