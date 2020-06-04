require 'fast_jsonapi'

class VideoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :video_id, :thumbnail_url, :category
end
