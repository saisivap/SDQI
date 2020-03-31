require "application_system_test_case"

class SharedsTest < ApplicationSystemTestCase
  setup do
    @shared = shareds(:one)
  end

  test "visiting the index" do
    visit shareds_url
    assert_selector "h1", text: "Shareds"
  end

  test "creating a Shared" do
    visit shareds_url
    click_on "New Shared"

    fill_in "Block", with: @shared.block
    fill_in "Floor", with: @shared.floor
    fill_in "Type of service", with: @shared.type_of_service
    fill_in "User", with: @shared.user_id
    click_on "Create Shared"

    assert_text "Shared was successfully created"
    click_on "Back"
  end

  test "updating a Shared" do
    visit shareds_url
    click_on "Edit", match: :first

    fill_in "Block", with: @shared.block
    fill_in "Floor", with: @shared.floor
    fill_in "Type of service", with: @shared.type_of_service
    fill_in "User", with: @shared.user_id
    click_on "Update Shared"

    assert_text "Shared was successfully updated"
    click_on "Back"
  end

  test "destroying a Shared" do
    visit shareds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shared was successfully destroyed"
  end
end
