require 'spec_helper'

RSpec.describe Video do
  before(:each) do
    data = { snippet: {
      resourceId: {
        videoId: '12345' },
        thumbnails: {
          default: {
            url: 'example.com'
          }
        },
        title: 'Yoga Video'
        }}
     @video = Video.new(data, 1)
  end

  it "Can create video object with readable attributes" do
    expect(@video.title).to eq('Yoga Video')
    expect(@video.thumbnail_url).to eq('example.com')
    expect(@video.video_id).to eq('12345')
    expect(@video.category).to eq('yoga')
  end

  it "Can add correct category to video object" do
    expect(@video.find_category).to eq('yoga')
  end
end
