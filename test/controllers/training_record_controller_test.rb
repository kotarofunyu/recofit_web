require 'test_helper'

class TrainingRecordControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get training_record_new_url
    assert_response :success
  end

  test "should get create" do
    get training_record_create_url
    assert_response :success
  end

  test "should get edit" do
    get training_record_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get training_record_destroy_url
    assert_response :success
  end
end
