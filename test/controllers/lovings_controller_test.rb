require 'test_helper'

class LovingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loving = lovings(:one)
  end

  test "should get index" do
    get lovings_url
    assert_response :success
  end

  test "should get new" do
    get new_loving_url
    assert_response :success
  end

  test "should create loving" do
    assert_difference('Loving.count') do
      post lovings_url, params: { loving: { ask: @loving.ask, attitude: @loving.attitude, content: @loving.content, gneder: @loving.gneder } }
    end

    assert_redirected_to loving_url(Loving.last)
  end

  test "should show loving" do
    get loving_url(@loving)
    assert_response :success
  end

  test "should get edit" do
    get edit_loving_url(@loving)
    assert_response :success
  end

  test "should update loving" do
    patch loving_url(@loving), params: { loving: { ask: @loving.ask, attitude: @loving.attitude, content: @loving.content, gneder: @loving.gneder } }
    assert_redirected_to loving_url(@loving)
  end

  test "should destroy loving" do
    assert_difference('Loving.count', -1) do
      delete loving_url(@loving)
    end

    assert_redirected_to lovings_url
  end
end
