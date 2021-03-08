require "application_system_test_case"

class DspsTest < ApplicationSystemTestCase
  setup do
    @dsp = dsps(:one)
  end

  test "visiting the index" do
    visit dsps_url
    assert_selector "h1", text: "Dsps"
  end

  test "creating a Dsp" do
    visit dsps_url
    click_on "New Dsp"

    fill_in "Dsp admin email", with: @dsp.dsp_admin_email
    fill_in "Dsp admin name", with: @dsp.dsp_admin_name
    fill_in "Dsp admin number", with: @dsp.dsp_admin_number
    fill_in "Dsp admin surname", with: @dsp.dsp_admin_surname
    fill_in "Dsp name", with: @dsp.dsp_name
    fill_in "Name", with: @dsp.name
    click_on "Create Dsp"

    assert_text "Dsp was successfully created"
    click_on "Back"
  end

  test "updating a Dsp" do
    visit dsps_url
    click_on "Edit", match: :first

    fill_in "Dsp admin email", with: @dsp.dsp_admin_email
    fill_in "Dsp admin name", with: @dsp.dsp_admin_name
    fill_in "Dsp admin number", with: @dsp.dsp_admin_number
    fill_in "Dsp admin surname", with: @dsp.dsp_admin_surname
    fill_in "Dsp name", with: @dsp.dsp_name
    fill_in "Name", with: @dsp.name
    click_on "Update Dsp"

    assert_text "Dsp was successfully updated"
    click_on "Back"
  end

  test "destroying a Dsp" do
    visit dsps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dsp was successfully destroyed"
  end
end
