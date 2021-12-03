require 'test_helper'

class UsersViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_view = users_views(:one)
  end

  test "should get index" do
    get users_views_url
    assert_response :success
  end

  test "should get new" do
    get new_users_view_url
    assert_response :success
  end

  test "should create users_view" do
    assert_difference('UsersView.count') do
      post users_views_url, params: { users_view: {  } }
    end

    assert_redirected_to users_view_url(UsersView.last)
  end

  test "should show users_view" do
    get users_view_url(@users_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_view_url(@users_view)
    assert_response :success
  end

  test "should update users_view" do
    patch users_view_url(@users_view), params: { users_view: {  } }
    assert_redirected_to users_view_url(@users_view)
  end

  test "should destroy users_view" do
    assert_difference('UsersView.count', -1) do
      delete users_view_url(@users_view)
    end

    assert_redirected_to users_views_url
  end
end
