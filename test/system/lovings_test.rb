require "application_system_test_case"

class LovingsTest < ApplicationSystemTestCase
  setup do
    @loving = lovings(:one)
  end

  test "visiting the index" do
    visit lovings_url
    assert_selector "h1", text: "Lovings"
  end

  test "creating a Loving" do
    visit lovings_url
    click_on "New Loving"

    fill_in "Ask", with: @loving.ask
    fill_in "Attitude", with: @loving.attitude
    fill_in "Content", with: @loving.content
    fill_in "Gneder", with: @loving.gneder
    click_on "Create Loving"

    assert_text "Loving was successfully created"
    click_on "Back"
  end

  test "updating a Loving" do
    visit lovings_url
    click_on "Edit", match: :first

    fill_in "Ask", with: @loving.ask
    fill_in "Attitude", with: @loving.attitude
    fill_in "Content", with: @loving.content
    fill_in "Gneder", with: @loving.gneder
    click_on "Update Loving"

    assert_text "Loving was successfully updated"
    click_on "Back"
  end

  test "destroying a Loving" do
    visit lovings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loving was successfully destroyed"
  end
end
