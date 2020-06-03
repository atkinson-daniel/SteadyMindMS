require 'rack/test'
require 'rspec'

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
