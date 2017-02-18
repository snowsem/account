require 'test_helper'

class OutletControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get outlet_index_url
    assert_response :success
  end

  test "should get new" do
    get outlet_new_url
    assert_response :success
  end

  test "should get create" do
    get outlet_create_url
    assert_response :success
  end

  test "should get destroy" do
    get outlet_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get outlet_edit_url
    assert_response :success
  end

end
