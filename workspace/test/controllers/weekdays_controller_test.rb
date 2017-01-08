require 'test_helper'

class WeekdaysControllerTest < ActionController::TestCase
  setup do
    @weekday = weekdays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weekdays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weekday" do
    assert_difference('Weekday.count') do
      post :create, weekday: { name: @weekday.name }
    end

    assert_redirected_to weekday_path(assigns(:weekday))
  end

  test "should show weekday" do
    get :show, id: @weekday
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weekday
    assert_response :success
  end

  test "should update weekday" do
    patch :update, id: @weekday, weekday: { name: @weekday.name }
    assert_redirected_to weekday_path(assigns(:weekday))
  end

  test "should destroy weekday" do
    assert_difference('Weekday.count', -1) do
      delete :destroy, id: @weekday
    end

    assert_redirected_to weekdays_path
  end
end
