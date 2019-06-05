require 'test_helper'

class CarzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carz = carzs(:one)
  end

  test "should get index" do
    get carzs_url
    assert_response :success
  end

  test "should get new" do
    get new_carz_url
    assert_response :success
  end

  test "should create carz" do
    assert_difference('Carz.count') do
      post carzs_url, params: { carz: { mak: @carz.mak, model: @carz.model, year: @carz.year } }
    end

    assert_redirected_to carz_url(Carz.last)
  end

  test "should show carz" do
    get carz_url(@carz)
    assert_response :success
  end

  test "should get edit" do
    get edit_carz_url(@carz)
    assert_response :success
  end

  test "should update carz" do
    patch carz_url(@carz), params: { carz: { mak: @carz.mak, model: @carz.model, year: @carz.year } }
    assert_redirected_to carz_url(@carz)
  end

  test "should destroy carz" do
    assert_difference('Carz.count', -1) do
      delete carz_url(@carz)
    end

    assert_redirected_to carzs_url
  end
end
