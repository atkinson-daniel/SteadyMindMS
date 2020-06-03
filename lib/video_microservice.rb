require 'sinatra'
require "sinatra/namespace"
require "./config/environment.rb"

namespace '/api/v1' do
  before do
    content_type 'application/json'
  end

  get '/sad' do
    playlist_items = YouTubeService.get_playlist_items('PL2gVg27Uw-kfUnyNb_OHdvjBvv4tJRjPw')[:items]

    videos = playlist_items.map.with_index(1) do |item, index|
      Video.new(item, index)
    end

    VideoSerializer.new(videos).serialized_json
  end

  get '/happy' do
    playlist_items = YouTubeService.get_playlist_items('PL2gVg27Uw-kcsCzSgn8Hufs4QKWdARfuv')[:items]

    videos = playlist_items.map.with_index(1) do |item, index|
      Video.new(item, index)
    end

    VideoSerializer.new(videos).serialized_json
  end

  get '/neutral' do
    playlist_items = YouTubeService.get_playlist_items('PL2gVg27Uw-kcv9hsbiRXBQQGKg0h3k0kv')[:items]

    videos = playlist_items.map.with_index(1) do |item, index|
      Video.new(item, index)
    end

    VideoSerializer.new(videos).serialized_json
  end
end
