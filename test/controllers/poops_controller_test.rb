require 'test_helper'

class PoopsControllerTest < ActionController::TestCase
  setup do
    @poop = poops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poop" do
    assert_difference('Poop.count') do
      post :create, poop: { consistency: @poop.consistency, notes: @poop.notes, user_id: @poop.user_id }
    end

    assert_redirected_to poop_path(assigns(:poop))
  end

  test "should show poop" do
    get :show, id: @poop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poop
    assert_response :success
  end

  test "should update poop" do
    patch :update, id: @poop, poop: { consistency: @poop.consistency, notes: @poop.notes, user_id: @poop.user_id }
    assert_redirected_to poop_path(assigns(:poop))
  end

  test "should destroy poop" do
    assert_difference('Poop.count', -1) do
      delete :destroy, id: @poop
    end

    assert_redirected_to poops_path
  end
end
