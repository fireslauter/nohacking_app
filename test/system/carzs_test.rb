require "application_system_test_case"

class CarzsTest < ApplicationSystemTestCase
  setup do
    @carz = carzs(:one)
  end

  test "visiting the index" do
    visit carzs_url
    assert_selector "h1", text: "Carzs"
  end

  test "creating a Carz" do
    visit carzs_url
    click_on "New Carz"

    fill_in "Mak", with: @carz.mak
    fill_in "Model", with: @carz.model
    fill_in "Year", with: @carz.year
    click_on "Create Carz"

    assert_text "Carz was successfully created"
    click_on "Back"
  end

  test "updating a Carz" do
    visit carzs_url
    click_on "Edit", match: :first

    fill_in "Mak", with: @carz.mak
    fill_in "Model", with: @carz.model
    fill_in "Year", with: @carz.year
    click_on "Update Carz"

    assert_text "Carz was successfully updated"
    click_on "Back"
  end

  test "destroying a Carz" do
    visit carzs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carz was successfully destroyed"
  end
end
