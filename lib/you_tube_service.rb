require 'faraday'

class YouTubeService
  def self.get_playlist_items(playlistId)
    resp = conn.get('playlistItems') do |req|
      req.params['part'] = 'snippet'
      req.params['playlistId'] = playlistId
      req.params['maxResults'] = '50'
    end
    JSON.parse(resp.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: 'https://www.googleapis.com/youtube/v3') do |f|
      f.params['key'] = ENV['YOUTUBE-API-KEY']
    end
  end
end
