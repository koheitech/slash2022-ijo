require 'test_helper'

class EnergyUsagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @energy_usage = energy_usages(:one)
  end

  test "should get index" do
    get energy_usages_url
    assert_response :success
  end

  test "should get new" do
    get new_energy_usage_url
    assert_response :success
  end

  test "should create energy_usage" do
    assert_difference('EnergyUsage.count') do
      post energy_usages_url, params: { energy_usage: { cpu: @energy_usage.cpu, gpu: @energy_usage.gpu, loggedAt: @energy_usage.loggedAt, memory: @energy_usage.memory, network: @energy_usage.network, power: @energy_usage.power } }
    end

    assert_redirected_to energy_usage_url(EnergyUsage.last)
  end

  test "should show energy_usage" do
    get energy_usage_url(@energy_usage)
    assert_response :success
  end

  test "should get edit" do
    get edit_energy_usage_url(@energy_usage)
    assert_response :success
  end

  test "should update energy_usage" do
    patch energy_usage_url(@energy_usage), params: { energy_usage: { cpu: @energy_usage.cpu, gpu: @energy_usage.gpu, loggedAt: @energy_usage.loggedAt, memory: @energy_usage.memory, network: @energy_usage.network, power: @energy_usage.power } }
    assert_redirected_to energy_usage_url(@energy_usage)
  end

  test "should destroy energy_usage" do
    assert_difference('EnergyUsage.count', -1) do
      delete energy_usage_url(@energy_usage)
    end

    assert_redirected_to energy_usages_url
  end
end
