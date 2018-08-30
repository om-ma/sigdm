require 'test_helper'

class AppointmentFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment_file = appointment_files(:one)
  end

  test "should get index" do
    get appointment_files_url
    assert_response :success
  end

  test "should get new" do
    get new_appointment_file_url
    assert_response :success
  end

  test "should create appointment_file" do
    assert_difference('AppointmentFile.count') do
      post appointment_files_url, params: { appointment_file: { appointment_id: @appointment_file.appointment_id, desc: @appointment_file.desc, document: @appointment_file.document, name: @appointment_file.name } }
    end

    assert_redirected_to appointment_file_url(AppointmentFile.last)
  end

  test "should show appointment_file" do
    get appointment_file_url(@appointment_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_appointment_file_url(@appointment_file)
    assert_response :success
  end

  test "should update appointment_file" do
    patch appointment_file_url(@appointment_file), params: { appointment_file: { appointment_id: @appointment_file.appointment_id, desc: @appointment_file.desc, document: @appointment_file.document, name: @appointment_file.name } }
    assert_redirected_to appointment_file_url(@appointment_file)
  end

  test "should destroy appointment_file" do
    assert_difference('AppointmentFile.count', -1) do
      delete appointment_file_url(@appointment_file)
    end

    assert_redirected_to appointment_files_url
  end
end
