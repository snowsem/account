require 'test_helper'

class IssueCommentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get issue_comment_index_url
    assert_response :success
  end

  test "should get edit" do
    get issue_comment_edit_url
    assert_response :success
  end

  test "should get create" do
    get issue_comment_create_url
    assert_response :success
  end

  test "should get add" do
    get issue_comment_add_url
    assert_response :success
  end

end
