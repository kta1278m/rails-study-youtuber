require 'test_helper'

class YoutubersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @youtuber = youtubers(:one)
  end

  test "should get index" do
    get youtubers_url
    assert_response :success
  end

  test "should get new" do
    get new_youtuber_url
    assert_response :success
  end

  test "should create youtuber" do
    assert_difference('Youtuber.count') do
      post youtubers_url, params: { youtuber: { age: @youtuber.age, name: @youtuber.name } }
    end

    assert_redirected_to youtuber_url(Youtuber.last)
  end

  test "should show youtuber" do
    get youtuber_url(@youtuber)
    assert_response :success
  end

  test "should get edit" do
    get edit_youtuber_url(@youtuber)
    assert_response :success
  end

  test "should update youtuber" do
    patch youtuber_url(@youtuber), params: { youtuber: { age: @youtuber.age, name: @youtuber.name } }
    assert_redirected_to youtuber_url(@youtuber)
  end

  test "should destroy youtuber" do
    assert_difference('Youtuber.count', -1) do
      delete youtuber_url(@youtuber)
    end

    assert_redirected_to youtubers_url
  end
end
