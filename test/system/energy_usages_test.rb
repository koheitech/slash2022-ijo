require "application_system_test_case"

class EnergyUsagesTest < ApplicationSystemTestCase
  setup do
    @energy_usage = energy_usages(:one)
  end

  test "visiting the index" do
    visit energy_usages_url
    assert_selector "h1", text: "Energy Usages"
  end

  test "creating a Energy usage" do
    visit energy_usages_url
    click_on "New Energy Usage"

    fill_in "Cpu", with: @energy_usage.cpu
    fill_in "Gpu", with: @energy_usage.gpu
    fill_in "Loggedat", with: @energy_usage.loggedAt
    fill_in "Memory", with: @energy_usage.memory
    fill_in "Network", with: @energy_usage.network
    check "Power" if @energy_usage.power
    click_on "Create Energy usage"

    assert_text "Energy usage was successfully created"
    click_on "Back"
  end

  test "updating a Energy usage" do
    visit energy_usages_url
    click_on "Edit", match: :first

    fill_in "Cpu", with: @energy_usage.cpu
    fill_in "Gpu", with: @energy_usage.gpu
    fill_in "Loggedat", with: @energy_usage.loggedAt
    fill_in "Memory", with: @energy_usage.memory
    fill_in "Network", with: @energy_usage.network
    check "Power" if @energy_usage.power
    click_on "Update Energy usage"

    assert_text "Energy usage was successfully updated"
    click_on "Back"
  end

  test "destroying a Energy usage" do
    visit energy_usages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Energy usage was successfully destroyed"
  end
end
