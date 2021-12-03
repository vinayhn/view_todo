require "application_system_test_case"

class RegestersTest < ApplicationSystemTestCase
  setup do
    @regester = regesters(:one)
  end

  test "visiting the index" do
    visit regesters_url
    assert_selector "h1", text: "Regesters"
  end

  test "creating a Regester" do
    visit regesters_url
    click_on "New Regester"

    fill_in "Email", with: @regester.email
    fill_in "Name", with: @regester.name
    fill_in "Password digest", with: @regester.password_digest
    click_on "Create Regester"

    assert_text "Regester was successfully created"
    click_on "Back"
  end

  test "updating a Regester" do
    visit regesters_url
    click_on "Edit", match: :first

    fill_in "Email", with: @regester.email
    fill_in "Name", with: @regester.name
    fill_in "Password digest", with: @regester.password_digest
    click_on "Update Regester"

    assert_text "Regester was successfully updated"
    click_on "Back"
  end

  test "destroying a Regester" do
    visit regesters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Regester was successfully destroyed"
  end
end
