require 'test_helper'

class OfficeRatesControllerTest < ActionController::TestCase
  setup do
    @office_rate = office_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:office_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create office_rate" do
    assert_difference('OfficeRate.count') do
      post :create, office_rate: { consulting_room_id: @office_rate.consulting_room_id, price: @office_rate.price, service: @office_rate.service }
    end

    assert_redirected_to office_rate_path(assigns(:office_rate))
  end

  test "should show office_rate" do
    get :show, id: @office_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @office_rate
    assert_response :success
  end

  test "should update office_rate" do
    patch :update, id: @office_rate, office_rate: { consulting_room_id: @office_rate.consulting_room_id, price: @office_rate.price, service: @office_rate.service }
    assert_redirected_to office_rate_path(assigns(:office_rate))
  end

  test "should destroy office_rate" do
    assert_difference('OfficeRate.count', -1) do
      delete :destroy, id: @office_rate
    end

    assert_redirected_to office_rates_path
  end
end
