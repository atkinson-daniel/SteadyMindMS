require 'spec_helper'

RSpec.describe 'Video Microservice' do
  include Rack::Test::Methods
  it 'can return sad videos' do
    get '/sad'

    videos = JSON.parse(last_response.body, symbolize_names: true)
    first_video = videos[:data].first

    expect(last_response).to be_ok
    expect(first_video[:attributes]).to have_key :category
    expect(first_video[:attributes]).to have_key :title
    expect(first_video[:attributes]).to have_key :thumbnail_url
    expect(first_video[:attributes]).to have_key :video_id
  end

  it 'can return happy videos' do
    get '/happy'

    videos = JSON.parse(last_response.body, symbolize_names: true)
    first_video = videos[:data].first

    expect(last_response).to be_ok
    expect(first_video[:attributes]).to have_key :category
    expect(first_video[:attributes]).to have_key :title
    expect(first_video[:attributes]).to have_key :thumbnail_url
    expect(first_video[:attributes]).to have_key :video_id
  end

  it 'can return neutral videos' do
    get '/neutral'

    videos = JSON.parse(last_response.body, symbolize_names: true)
    first_video = videos[:data].first

    expect(last_response).to be_ok
    expect(first_video[:attributes]).to have_key :category
    expect(first_video[:attributes]).to have_key :title
    expect(first_video[:attributes]).to have_key :thumbnail_url
    expect(first_video[:attributes]).to have_key :video_id
  end
end
