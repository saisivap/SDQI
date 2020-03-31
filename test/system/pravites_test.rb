require "application_system_test_case"

class PravitesTest < ApplicationSystemTestCase
  setup do
    @pravite = pravites(:one)
  end

  test "visiting the index" do
    visit pravites_url
    assert_selector "h1", text: "Pravites"
  end

  test "creating a Pravite" do
    visit pravites_url
    click_on "New Pravite"

    fill_in "Block", with: @pravite.block
    fill_in "Flate", with: @pravite.flate
    fill_in "Type of service", with: @pravite.type_of_service
    fill_in "User", with: @pravite.user_id
    click_on "Create Pravite"

    assert_text "Pravite was successfully created"
    click_on "Back"
  end

  test "updating a Pravite" do
    visit pravites_url
    click_on "Edit", match: :first

    fill_in "Block", with: @pravite.block
    fill_in "Flate", with: @pravite.flate
    fill_in "Type of service", with: @pravite.type_of_service
    fill_in "User", with: @pravite.user_id
    click_on "Update Pravite"

    assert_text "Pravite was successfully updated"
    click_on "Back"
  end

  test "destroying a Pravite" do
    visit pravites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pravite was successfully destroyed"
  end
end
