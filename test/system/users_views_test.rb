require "application_system_test_case"

class UsersViewsTest < ApplicationSystemTestCase
  setup do
    @users_view = users_views(:one)
  end

  test "visiting the index" do
    visit users_views_url
    assert_selector "h1", text: "Users Views"
  end

  test "creating a Users view" do
    visit users_views_url
    click_on "New Users View"

    click_on "Create Users view"

    assert_text "Users view was successfully created"
    click_on "Back"
  end

  test "updating a Users view" do
    visit users_views_url
    click_on "Edit", match: :first

    click_on "Update Users view"

    assert_text "Users view was successfully updated"
    click_on "Back"
  end

  test "destroying a Users view" do
    visit users_views_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Users view was successfully destroyed"
  end
end
