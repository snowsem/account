require 'test_helper'

class Admin::CitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_city = admin_cities(:one)
  end

  test "should get index" do
    get admin_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_city_url
    assert_response :success
  end

  test "should create admin_city" do
    assert_difference('Admin::City.count') do
      post admin_cities_url, params: { admin_city: { name: @admin_city.name } }
    end

    assert_redirected_to admin_city_url(Admin::City.last)
  end

  test "should show admin_city" do
    get admin_city_url(@admin_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_city_url(@admin_city)
    assert_response :success
  end

  test "should update admin_city" do
    patch admin_city_url(@admin_city), params: { admin_city: { name: @admin_city.name } }
    assert_redirected_to admin_city_url(@admin_city)
  end

  test "should destroy admin_city" do
    assert_difference('Admin::City.count', -1) do
      delete admin_city_url(@admin_city)
    end

    assert_redirected_to admin_cities_url
  end
end
