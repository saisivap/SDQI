require "application_system_test_case"

class AminitebookingsTest < ApplicationSystemTestCase
  setup do
    @aminitebooking = aminitebookings(:one)
  end

  test "visiting the index" do
    visit aminitebookings_url
    assert_selector "h1", text: "Aminitebookings"
  end

  test "creating a Aminitebooking" do
    visit aminitebookings_url
    click_on "New Aminitebooking"

    fill_in "From time date", with: @aminitebooking.from_time_date
    fill_in "Roomsofaminite", with: @aminitebooking.roomsofaminite_id
    fill_in "To time date", with: @aminitebooking.to_time_date
    fill_in "User", with: @aminitebooking.user_id
    check "Vacte" if @aminitebooking.vacte
    click_on "Create Aminitebooking"

    assert_text "Aminitebooking was successfully created"
    click_on "Back"
  end

  test "updating a Aminitebooking" do
    visit aminitebookings_url
    click_on "Edit", match: :first

    fill_in "From time date", with: @aminitebooking.from_time_date
    fill_in "Roomsofaminite", with: @aminitebooking.roomsofaminite_id
    fill_in "To time date", with: @aminitebooking.to_time_date
    fill_in "User", with: @aminitebooking.user_id
    check "Vacte" if @aminitebooking.vacte
    click_on "Update Aminitebooking"

    assert_text "Aminitebooking was successfully updated"
    click_on "Back"
  end

  test "destroying a Aminitebooking" do
    visit aminitebookings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aminitebooking was successfully destroyed"
  end
end
