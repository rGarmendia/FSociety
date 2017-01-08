require 'test_helper'

class ConsultingRoomsControllerTest < ActionController::TestCase
  setup do
    @consulting_room = consulting_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consulting_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consulting_room" do
    assert_difference('ConsultingRoom.count') do
      post :create, consulting_room: { address: @consulting_room.address, city_id: @consulting_room.city_id, country_id: @consulting_room.country_id, finaltime: @consulting_room.finaltime, name: @consulting_room.name, phone: @consulting_room.phone, querytime: @consulting_room.querytime, starttime: @consulting_room.starttime, state_id: @consulting_room.state_id }
    end

    assert_redirected_to consulting_room_path(assigns(:consulting_room))
  end

  test "should show consulting_room" do
    get :show, id: @consulting_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consulting_room
    assert_response :success
  end

  test "should update consulting_room" do
    patch :update, id: @consulting_room, consulting_room: { address: @consulting_room.address, city_id: @consulting_room.city_id, country_id: @consulting_room.country_id, finaltime: @consulting_room.finaltime, name: @consulting_room.name, phone: @consulting_room.phone, querytime: @consulting_room.querytime, starttime: @consulting_room.starttime, state_id: @consulting_room.state_id }
    assert_redirected_to consulting_room_path(assigns(:consulting_room))
  end

  test "should destroy consulting_room" do
    assert_difference('ConsultingRoom.count', -1) do
      delete :destroy, id: @consulting_room
    end

    assert_redirected_to consulting_rooms_path
  end
end
