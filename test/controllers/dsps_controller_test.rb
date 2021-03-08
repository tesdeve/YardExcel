require "test_helper"

class DspsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dsp = dsps(:one)
  end

  test "should get index" do
    get dsps_url
    assert_response :success
  end

  test "should get new" do
    get new_dsp_url
    assert_response :success
  end

  test "should create dsp" do
    assert_difference('Dsp.count') do
      post dsps_url, params: { dsp: { dsp_admin_email: @dsp.dsp_admin_email, dsp_admin_name: @dsp.dsp_admin_name, dsp_admin_number: @dsp.dsp_admin_number, dsp_admin_surname: @dsp.dsp_admin_surname, dsp_name: @dsp.dsp_name, name: @dsp.name } }
    end

    assert_redirected_to dsp_url(Dsp.last)
  end

  test "should show dsp" do
    get dsp_url(@dsp)
    assert_response :success
  end

  test "should get edit" do
    get edit_dsp_url(@dsp)
    assert_response :success
  end

  test "should update dsp" do
    patch dsp_url(@dsp), params: { dsp: { dsp_admin_email: @dsp.dsp_admin_email, dsp_admin_name: @dsp.dsp_admin_name, dsp_admin_number: @dsp.dsp_admin_number, dsp_admin_surname: @dsp.dsp_admin_surname, dsp_name: @dsp.dsp_name, name: @dsp.name } }
    assert_redirected_to dsp_url(@dsp)
  end

  test "should destroy dsp" do
    assert_difference('Dsp.count', -1) do
      delete dsp_url(@dsp)
    end

    assert_redirected_to dsps_url
  end
end
