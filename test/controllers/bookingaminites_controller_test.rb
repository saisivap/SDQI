require 'test_helper'

class BookingaminitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookingaminite = bookingaminites(:one)
  end

  test "should get index" do
    get bookingaminites_url
    assert_response :success
  end

  test "should get new" do
    get new_bookingaminite_url
    assert_response :success
  end

  test "should create bookingaminite" do
    assert_difference('Bookingaminite.count') do
      post bookingaminites_url, params: { bookingaminite: { booking_date: @bookingaminite.booking_date, roomsofaminite_id: @bookingaminite.roomsofaminite_id, timing: @bookingaminite.timing, user_id: @bookingaminite.user_id } }
    end

    assert_redirected_to bookingaminite_url(Bookingaminite.last)
  end

  test "should show bookingaminite" do
    get bookingaminite_url(@bookingaminite)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookingaminite_url(@bookingaminite)
    assert_response :success
  end

  test "should update bookingaminite" do
    patch bookingaminite_url(@bookingaminite), params: { bookingaminite: { booking_date: @bookingaminite.booking_date, roomsofaminite_id: @bookingaminite.roomsofaminite_id, timing: @bookingaminite.timing, user_id: @bookingaminite.user_id } }
    assert_redirected_to bookingaminite_url(@bookingaminite)
  end

  test "should destroy bookingaminite" do
    assert_difference('Bookingaminite.count', -1) do
      delete bookingaminite_url(@bookingaminite)
    end

    assert_redirected_to bookingaminites_url
  end
end
