require "application_system_test_case"

class YoutubechannelsTest < ApplicationSystemTestCase
  setup do
    @youtubechannel = youtubechannels(:one)
  end

  test "visiting the index" do
    visit youtubechannels_url
    assert_selector "h1", text: "Youtubechannels"
  end

  test "creating a Youtubechannel" do
    visit youtubechannels_url
    click_on "New Youtubechannel"

    fill_in "Subscriber", with: @youtubechannel.subscriber
    fill_in "Url", with: @youtubechannel.url
    fill_in "Youtuber", with: @youtubechannel.youtuber_id
    click_on "Create Youtubechannel"

    assert_text "Youtubechannel was successfully created"
    click_on "Back"
  end

  test "updating a Youtubechannel" do
    visit youtubechannels_url
    click_on "Edit", match: :first

    fill_in "Subscriber", with: @youtubechannel.subscriber
    fill_in "Url", with: @youtubechannel.url
    fill_in "Youtuber", with: @youtubechannel.youtuber_id
    click_on "Update Youtubechannel"

    assert_text "Youtubechannel was successfully updated"
    click_on "Back"
  end

  test "destroying a Youtubechannel" do
    visit youtubechannels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Youtubechannel was successfully destroyed"
  end
end
