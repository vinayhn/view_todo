require 'test_helper'

class TasksViewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tasks_view = tasks_views(:one)
  end

  test "should get index" do
    get tasks_views_url
    assert_response :success
  end

  test "should get new" do
    get new_tasks_view_url
    assert_response :success
  end

  test "should create tasks_view" do
    assert_difference('TasksView.count') do
      post tasks_views_url, params: { tasks_view: {  } }
    end

    assert_redirected_to tasks_view_url(TasksView.last)
  end

  test "should show tasks_view" do
    get tasks_view_url(@tasks_view)
    assert_response :success
  end

  test "should get edit" do
    get edit_tasks_view_url(@tasks_view)
    assert_response :success
  end

  test "should update tasks_view" do
    patch tasks_view_url(@tasks_view), params: { tasks_view: {  } }
    assert_redirected_to tasks_view_url(@tasks_view)
  end

  test "should destroy tasks_view" do
    assert_difference('TasksView.count', -1) do
      delete tasks_view_url(@tasks_view)
    end

    assert_redirected_to tasks_views_url
  end
end
