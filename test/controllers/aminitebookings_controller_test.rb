require 'test_helper'

class AminitebookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aminitebooking = aminitebookings(:one)
  end

  test "should get index" do
    get aminitebookings_url
    assert_response :success
  end

  test "should get new" do
    get new_aminitebooking_url
    assert_response :success
  end

  test "should create aminitebooking" do
    assert_difference('Aminitebooking.count') do
      post aminitebookings_url, params: { aminitebooking: { from_time_date: @aminitebooking.from_time_date, roomsofaminite_id: @aminitebooking.roomsofaminite_id, to_time_date: @aminitebooking.to_time_date, user_id: @aminitebooking.user_id, vacte: @aminitebooking.vacte } }
    end

    assert_redirected_to aminitebooking_url(Aminitebooking.last)
  end

  test "should show aminitebooking" do
    get aminitebooking_url(@aminitebooking)
    assert_response :success
  end

  test "should get edit" do
    get edit_aminitebooking_url(@aminitebooking)
    assert_response :success
  end

  test "should update aminitebooking" do
    patch aminitebooking_url(@aminitebooking), params: { aminitebooking: { from_time_date: @aminitebooking.from_time_date, roomsofaminite_id: @aminitebooking.roomsofaminite_id, to_time_date: @aminitebooking.to_time_date, user_id: @aminitebooking.user_id, vacte: @aminitebooking.vacte } }
    assert_redirected_to aminitebooking_url(@aminitebooking)
  end

  test "should destroy aminitebooking" do
    assert_difference('Aminitebooking.count', -1) do
      delete aminitebooking_url(@aminitebooking)
    end

    assert_redirected_to aminitebookings_url
  end
end
