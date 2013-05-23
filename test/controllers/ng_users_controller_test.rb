require 'test_helper'

class NgUsersControllerTest < ActionController::TestCase
  setup do
    @ng_user = ng_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ng_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ng_user" do
    assert_difference('NgUser.count') do
      post :create, ng_user: { distinationUser: @ng_user.distinationUser, user_id: @ng_user.user_id }
    end

    assert_redirected_to ng_user_path(assigns(:ng_user))
  end

  test "should show ng_user" do
    get :show, id: @ng_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ng_user
    assert_response :success
  end

  test "should update ng_user" do
    patch :update, id: @ng_user, ng_user: { distinationUser: @ng_user.distinationUser, user_id: @ng_user.user_id }
    assert_redirected_to ng_user_path(assigns(:ng_user))
  end

  test "should destroy ng_user" do
    assert_difference('NgUser.count', -1) do
      delete :destroy, id: @ng_user
    end

    assert_redirected_to ng_users_path
  end
end
