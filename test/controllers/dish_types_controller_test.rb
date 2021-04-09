require 'test_helper'

class DishTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dish_types_index_url
    assert_response :success
  end

  test "should get new" do
    get dish_types_new_url
    assert_response :success
  end

  test "should get edit" do
    get dish_types_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get dish_types_destroy_url
    assert_response :success
  end

end
