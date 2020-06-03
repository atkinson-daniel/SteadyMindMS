require 'figaro'
require './lib/you_tube_service'
require './lib/video'
require './lib/video_serializer'

Figaro.application = Figaro::Application.new(
  environment: 'production',
  path: File.expand_path("config/application.yml")
)
Figaro.load
