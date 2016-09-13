require 'test_helper'

class RoomappliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roomapply = roomapplies(:one)
  end

  test "should get index" do
    get roomapplies_url
    assert_response :success
  end

  test "should get new" do
    get new_roomapply_url
    assert_response :success
  end

  test "should create roomapply" do
    assert_difference('Roomapply.count') do
      post roomapplies_url, params: { roomapply: { description: @roomapply.description, email: @roomapply.email, fullname: @roomapply.fullname } }
    end

    assert_redirected_to roomapply_url(Roomapply.last)
  end

  test "should show roomapply" do
    get roomapply_url(@roomapply)
    assert_response :success
  end

  test "should get edit" do
    get edit_roomapply_url(@roomapply)
    assert_response :success
  end

  test "should update roomapply" do
    patch roomapply_url(@roomapply), params: { roomapply: { description: @roomapply.description, email: @roomapply.email, fullname: @roomapply.fullname } }
    assert_redirected_to roomapply_url(@roomapply)
  end

  test "should destroy roomapply" do
    assert_difference('Roomapply.count', -1) do
      delete roomapply_url(@roomapply)
    end

    assert_redirected_to roomapplies_url
  end
end
