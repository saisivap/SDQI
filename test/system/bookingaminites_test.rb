require "application_system_test_case"

class BookingaminitesTest < ApplicationSystemTestCase
  setup do
    @bookingaminite = bookingaminites(:one)
  end

  test "visiting the index" do
    visit bookingaminites_url
    assert_selector "h1", text: "Bookingaminites"
  end

  test "creating a Bookingaminite" do
    visit bookingaminites_url
    click_on "New Bookingaminite"

    fill_in "Booking date", with: @bookingaminite.booking_date
    fill_in "Roomsofaminite", with: @bookingaminite.roomsofaminite_id
    fill_in "Timing", with: @bookingaminite.timing
    fill_in "User", with: @bookingaminite.user_id
    click_on "Create Bookingaminite"

    assert_text "Bookingaminite was successfully created"
    click_on "Back"
  end

  test "updating a Bookingaminite" do
    visit bookingaminites_url
    click_on "Edit", match: :first

    fill_in "Booking date", with: @bookingaminite.booking_date
    fill_in "Roomsofaminite", with: @bookingaminite.roomsofaminite_id
    fill_in "Timing", with: @bookingaminite.timing
    fill_in "User", with: @bookingaminite.user_id
    click_on "Update Bookingaminite"

    assert_text "Bookingaminite was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookingaminite" do
    visit bookingaminites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookingaminite was successfully destroyed"
  end
end
