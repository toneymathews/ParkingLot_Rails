require "application_system_test_case"

class ParkingLotsTest < ApplicationSystemTestCase
  setup do
    @parking_lot = parking_lots(:one)
  end

  test "visiting the index" do
    visit parking_lots_url
    assert_selector "h1", text: "Parking Lots"
  end

  test "creating a Parking lot" do
    visit parking_lots_url
    click_on "New Parking Lot"

    fill_in "Lot", with: @parking_lot.lot
    check "Occupied" if @parking_lot.occupied
    click_on "Create Parking lot"

    assert_text "Parking lot was successfully created"
    click_on "Back"
  end

  test "updating a Parking lot" do
    visit parking_lots_url
    click_on "Edit", match: :first

    fill_in "Lot", with: @parking_lot.lot
    check "Occupied" if @parking_lot.occupied
    click_on "Update Parking lot"

    assert_text "Parking lot was successfully updated"
    click_on "Back"
  end

  test "destroying a Parking lot" do
    visit parking_lots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parking lot was successfully destroyed"
  end
end
