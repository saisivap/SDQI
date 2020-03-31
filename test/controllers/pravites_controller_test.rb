require 'test_helper'

class PravitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pravite = pravites(:one)
  end

  test "should get index" do
    get pravites_url
    assert_response :success
  end

  test "should get new" do
    get new_pravite_url
    assert_response :success
  end

  test "should create pravite" do
    assert_difference('Pravite.count') do
      post pravites_url, params: { pravite: { block: @pravite.block, flate: @pravite.flate, type_of_service: @pravite.type_of_service, user_id: @pravite.user_id } }
    end

    assert_redirected_to pravite_url(Pravite.last)
  end

  test "should show pravite" do
    get pravite_url(@pravite)
    assert_response :success
  end

  test "should get edit" do
    get edit_pravite_url(@pravite)
    assert_response :success
  end

  test "should update pravite" do
    patch pravite_url(@pravite), params: { pravite: { block: @pravite.block, flate: @pravite.flate, type_of_service: @pravite.type_of_service, user_id: @pravite.user_id } }
    assert_redirected_to pravite_url(@pravite)
  end

  test "should destroy pravite" do
    assert_difference('Pravite.count', -1) do
      delete pravite_url(@pravite)
    end

    assert_redirected_to pravites_url
  end
end
