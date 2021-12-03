require 'test_helper'

class RegestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regester = regesters(:one)
  end

  test "should get index" do
    get regesters_url
    assert_response :success
  end

  test "should get new" do
    get new_regester_url
    assert_response :success
  end

  test "should create regester" do
    assert_difference('Regester.count') do
      post regesters_url, params: { regester: { email: @regester.email, name: @regester.name, password_digest: @regester.password_digest } }
    end

    assert_redirected_to regester_url(Regester.last)
  end

  test "should show regester" do
    get regester_url(@regester)
    assert_response :success
  end

  test "should get edit" do
    get edit_regester_url(@regester)
    assert_response :success
  end

  test "should update regester" do
    patch regester_url(@regester), params: { regester: { email: @regester.email, name: @regester.name, password_digest: @regester.password_digest } }
    assert_redirected_to regester_url(@regester)
  end

  test "should destroy regester" do
    assert_difference('Regester.count', -1) do
      delete regester_url(@regester)
    end

    assert_redirected_to regesters_url
  end
end
