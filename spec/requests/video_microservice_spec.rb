require 'spec_helper'

RSpec.describe 'Video Microservice' do
  it 'can return sad videos', :vcr do
    get 'api/v1/videos/sad'

    videos = JSON.parse(last_response.body, symbolize_names: true)
    first_video = videos[:data].first

    expect(last_response).to be_ok
    expect(first_video[:attributes]).to have_key :category
    expect(first_video[:attributes]).to have_key :title
    expect(first_video[:attributes]).to have_key :thumbnail_url
    expect(first_video[:attributes]).to have_key :video_id
  end

  it 'can return happy videos', :vcr do
    get 'api/v1/videos/happy'

    videos = JSON.parse(last_response.body, symbolize_names: true)
    first_video = videos[:data].first

    expect(last_response).to be_ok
    expect(first_video[:attributes]).to have_key :category
    expect(first_video[:attributes]).to have_key :title
    expect(first_video[:attributes]).to have_key :thumbnail_url
    expect(first_video[:attributes]).to have_key :video_id
  end

  it 'can return neutral videos', :vcr do
    get 'api/v1/videos/neutral'

    videos = JSON.parse(last_response.body, symbolize_names: true)
    first_video = videos[:data].first

    expect(last_response).to be_ok
    expect(first_video[:attributes]).to have_key :category
    expect(first_video[:attributes]).to have_key :title
    expect(first_video[:attributes]).to have_key :thumbnail_url
    expect(first_video[:attributes]).to have_key :video_id
  end

  it 'can return all videos', :vcr do
    get 'api/v1/videos'

    videos = JSON.parse(last_response.body, symbolize_names: true)
    first_video = videos[:data].first

    expect(last_response).to be_ok
    expect(first_video[:attributes]).to have_key :category
    expect(first_video[:attributes]).to have_key :title
    expect(first_video[:attributes]).to have_key :thumbnail_url
    expect(first_video[:attributes]).to have_key :video_id
  end
end
