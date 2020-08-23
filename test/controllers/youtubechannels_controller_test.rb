require 'test_helper'

class YoutubechannelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @youtubechannel = youtubechannels(:one)
  end

  test "should get index" do
    get youtubechannels_url
    assert_response :success
  end

  test "should get new" do
    get new_youtubechannel_url
    assert_response :success
  end

  test "should create youtubechannel" do
    assert_difference('Youtubechannel.count') do
      post youtubechannels_url, params: { youtubechannel: { subscriber: @youtubechannel.subscriber, url: @youtubechannel.url, youtuber_id: @youtubechannel.youtuber_id } }
    end

    assert_redirected_to youtubechannel_url(Youtubechannel.last)
  end

  test "should show youtubechannel" do
    get youtubechannel_url(@youtubechannel)
    assert_response :success
  end

  test "should get edit" do
    get edit_youtubechannel_url(@youtubechannel)
    assert_response :success
  end

  test "should update youtubechannel" do
    patch youtubechannel_url(@youtubechannel), params: { youtubechannel: { subscriber: @youtubechannel.subscriber, url: @youtubechannel.url, youtuber_id: @youtubechannel.youtuber_id } }
    assert_redirected_to youtubechannel_url(@youtubechannel)
  end

  test "should destroy youtubechannel" do
    assert_difference('Youtubechannel.count', -1) do
      delete youtubechannel_url(@youtubechannel)
    end

    assert_redirected_to youtubechannels_url
  end
end
