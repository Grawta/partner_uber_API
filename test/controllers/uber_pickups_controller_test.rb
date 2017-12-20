require 'test_helper'

class UberPickupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uber_pickup = uber_pickups(:one)
  end

  test "should get index" do
    get uber_pickups_url, as: :json
    assert_response :success
  end

  test "should create uber_pickup" do
    assert_difference('UberPickup.count') do
      post uber_pickups_url, params: { uber_pickup: { pickup_place: @uber_pickup.pickup_place, pickup_time: @uber_pickup.pickup_time } }, as: :json
    end

    assert_response 201
  end

  test "should show uber_pickup" do
    get uber_pickup_url(@uber_pickup), as: :json
    assert_response :success
  end

  test "should update uber_pickup" do
    patch uber_pickup_url(@uber_pickup), params: { uber_pickup: { pickup_place: @uber_pickup.pickup_place, pickup_time: @uber_pickup.pickup_time } }, as: :json
    assert_response 200
  end

  test "should destroy uber_pickup" do
    assert_difference('UberPickup.count', -1) do
      delete uber_pickup_url(@uber_pickup), as: :json
    end

    assert_response 204
  end
end
