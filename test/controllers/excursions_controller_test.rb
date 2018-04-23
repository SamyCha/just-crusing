require 'test_helper'

class ExcursionsControllerTest < ActionDispatch::IntegrationTest
  test "should get Excursions" do
    get excursions_Excursions_url
    assert_response :success
  end

  test "should get index" do
    get excursions_index_url
    assert_response :success
  end

  test "should get new" do
    get excursions_new_url
    assert_response :success
  end

  test "should get create" do
    get excursions_create_url
    assert_response :success
  end

  test "should get show" do
    get excursions_show_url
    assert_response :success
  end

  test "should get edit" do
    get excursions_edit_url
    assert_response :success
  end

  test "should get update" do
    get excursions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get excursions_destroy_url
    assert_response :success
  end

end
