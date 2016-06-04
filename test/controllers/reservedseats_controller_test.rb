require 'test_helper'

class ReservedseatsControllerTest < ActionController::TestCase
  setup do
    @reservedseat = reservedseats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservedseats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reservedseat" do
    assert_difference('Reservedseat.count') do
      post :create, reservedseat: { booking_id: @reservedseat.booking_id, seat_id: @reservedseat.seat_id, showing_id: @reservedseat.showing_id }
    end

    assert_redirected_to reservedseat_path(assigns(:reservedseat))
  end

  test "should show reservedseat" do
    get :show, id: @reservedseat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reservedseat
    assert_response :success
  end

  test "should update reservedseat" do
    patch :update, id: @reservedseat, reservedseat: { booking_id: @reservedseat.booking_id, seat_id: @reservedseat.seat_id, showing_id: @reservedseat.showing_id }
    assert_redirected_to reservedseat_path(assigns(:reservedseat))
  end

  test "should destroy reservedseat" do
    assert_difference('Reservedseat.count', -1) do
      delete :destroy, id: @reservedseat
    end

    assert_redirected_to reservedseats_path
  end
end
