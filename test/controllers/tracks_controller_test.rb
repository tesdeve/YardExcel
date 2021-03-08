require "test_helper"

class TracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track = tracks(:one)
  end

  test "should get index" do
    get tracks_url
    assert_response :success
  end

  test "should get new" do
    get new_track_url
    assert_response :success
  end

  test "should create track" do
    assert_difference('Track.count') do
      post tracks_url, params: { track: { arrive_at_offsite: @track.arrive_at_offsite, cycle: @track.cycle, driver: @track.driver, dsp_id: @track.dsp_id, pad: @track.pad, route_code: @track.route_code, service_type: @track.service_type, staging_location: @track.staging_location, wave: @track.wave, wave_no: @track.wave_no } }
    end

    assert_redirected_to track_url(Track.last)
  end

  test "should show track" do
    get track_url(@track)
    assert_response :success
  end

  test "should get edit" do
    get edit_track_url(@track)
    assert_response :success
  end

  test "should update track" do
    patch track_url(@track), params: { track: { arrive_at_offsite: @track.arrive_at_offsite, cycle: @track.cycle, driver: @track.driver, dsp_id: @track.dsp_id, pad: @track.pad, route_code: @track.route_code, service_type: @track.service_type, staging_location: @track.staging_location, wave: @track.wave, wave_no: @track.wave_no } }
    assert_redirected_to track_url(@track)
  end

  test "should destroy track" do
    assert_difference('Track.count', -1) do
      delete track_url(@track)
    end

    assert_redirected_to tracks_url
  end
end
