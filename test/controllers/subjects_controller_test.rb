require "test_helper"

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subjects_index_url
    assert_response :success
  end

  test "should get show" do
    get subjects_show_url
    assert_response :success
  end

  test "should get create" do
    get subjects_create_url
    assert_response :success
  end

  test "should get update" do
    get subjects_update_url
    assert_response :success
  end

  test "should get destroy" do
    get subjects_destroy_url
    assert_response :success
  end
end
