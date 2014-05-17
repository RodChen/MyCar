require 'test_helper'

class CarItemsControllerTest < ActionController::TestCase
  setup do
    @car_item = car_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_item" do
    assert_difference('CarItem.count') do
      post :create, car_item: { car_id: @car_item.car_id, lease_id: @car_item.lease_id }
    end

    assert_redirected_to car_item_path(assigns(:car_item))
  end

  test "should show car_item" do
    get :show, id: @car_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_item
    assert_response :success
  end

  test "should update car_item" do
    patch :update, id: @car_item, car_item: { car_id: @car_item.car_id, lease_id: @car_item.lease_id }
    assert_redirected_to car_item_path(assigns(:car_item))
  end

  test "should destroy car_item" do
    assert_difference('CarItem.count', -1) do
      delete :destroy, id: @car_item
    end

    assert_redirected_to car_items_path
  end
end
