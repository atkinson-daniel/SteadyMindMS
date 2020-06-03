require 'rack/test'
require 'rspec'
require 'vcr'
require 'webmock'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../lib/video_microservice.rb', __FILE__
require File.expand_path '../../lib/you_tube_service.rb', __FILE__
require File.expand_path '../../lib/video.rb', __FILE__
require File.expand_path '../../lib/video_serializer.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

# For RSpec 2.x and 3.x
RSpec.configure { |c| c.include RSpecMixin }

VCR.configure do |config|
  config.cassette_library_dir = "spec/fixtures/vcr_cassettes"
  config.hook_into :webmock
  config.filter_sensitive_data('<YOUTUBE-API-KEY>') { ENV['YOUTUBE-API-KEY'] }
  config.configure_rspec_metadata!
end
