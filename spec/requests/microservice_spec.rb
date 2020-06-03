require File.expand_path '../../spec_helper.rb', __FILE__
# require './spec/spec_helper'
RSpec.describe 'Microservice Response' do
  it 'should return all sad videos' do
    get '/sad'

    expect(response).to be_successful

    video_response = JSON.parse(response.body, symbolize_names: true)
    binding.pry
    expect(video_response.length).to eq(9)
  end
end