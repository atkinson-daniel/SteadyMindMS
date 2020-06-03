require 'spec_helper'

RSpec.describe YouTubeService do
  it 'can connect to YouTube API', :vcr do
    youtube_service = YouTubeService.get_playlist_items('PL2gVg27Uw-kfUnyNb_OHdvjBvv4tJRjPw')

    expect(youtube_service[:items]).to_not be_empty
  end
end
