require "application_system_test_case"

class TracksTest < ApplicationSystemTestCase
  setup do
    @track = tracks(:one)
  end

  test "visiting the index" do
    visit tracks_url
    assert_selector "h1", text: "Tracks"
  end

  test "creating a Track" do
    visit tracks_url
    click_on "New Track"

    fill_in "Arrive at offsite", with: @track.arrive_at_offsite
    fill_in "Cycle", with: @track.cycle
    fill_in "Driver", with: @track.driver
    fill_in "Dsp", with: @track.dsp_id
    fill_in "Pad", with: @track.pad
    fill_in "Route code", with: @track.route_code
    fill_in "Service type", with: @track.service_type
    fill_in "Staging location", with: @track.staging_location
    fill_in "Wave", with: @track.wave
    fill_in "Wave no", with: @track.wave_no
    click_on "Create Track"

    assert_text "Track was successfully created"
    click_on "Back"
  end

  test "updating a Track" do
    visit tracks_url
    click_on "Edit", match: :first

    fill_in "Arrive at offsite", with: @track.arrive_at_offsite
    fill_in "Cycle", with: @track.cycle
    fill_in "Driver", with: @track.driver
    fill_in "Dsp", with: @track.dsp_id
    fill_in "Pad", with: @track.pad
    fill_in "Route code", with: @track.route_code
    fill_in "Service type", with: @track.service_type
    fill_in "Staging location", with: @track.staging_location
    fill_in "Wave", with: @track.wave
    fill_in "Wave no", with: @track.wave_no
    click_on "Update Track"

    assert_text "Track was successfully updated"
    click_on "Back"
  end

  test "destroying a Track" do
    visit tracks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Track was successfully destroyed"
  end
end
