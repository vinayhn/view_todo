require "application_system_test_case"

class TasksViewsTest < ApplicationSystemTestCase
  setup do
    @tasks_view = tasks_views(:one)
  end

  test "visiting the index" do
    visit tasks_views_url
    assert_selector "h1", text: "Tasks Views"
  end

  test "creating a Tasks view" do
    visit tasks_views_url
    click_on "New Tasks View"

    click_on "Create Tasks view"

    assert_text "Tasks view was successfully created"
    click_on "Back"
  end

  test "updating a Tasks view" do
    visit tasks_views_url
    click_on "Edit", match: :first

    click_on "Update Tasks view"

    assert_text "Tasks view was successfully updated"
    click_on "Back"
  end

  test "destroying a Tasks view" do
    visit tasks_views_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tasks view was successfully destroyed"
  end
end
