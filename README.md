# SteadyMindMS 

## About Our App

SteadyMindMS Microservice is an API used in conjunction with [SteadyMind](https://github.com/danielbldr/SteadyMind). This Microservice uses the [YouTube API](https://developers.google.com/youtube/v3) to collect video information from the SteadyMind [Youtube Channel](https://www.youtube.com/channel/UCtboPNBoRA6hRV52e4oNuDw?view_as=subscriber)

This application was created by the following Turing students: [Daniel Atkinson](https://github.com/danielbldr), [Javier Aguilar](https://github.com/javier-aguilar), [Steven Meyers](https://github.com/SMJ289), and [Travis Borgsmiller](https://github.com/TravisBorgsmiller)

### Local Installation
```
$ git clone git@github.com:danielbldr/SteadyMindMS.git   
$ cd SteadyMindMS
$ bundle   
$ bundle exec figaro install  
```

### Technologies Used
- Sintra 5.1.7
- Ruby 2.5.3

## Environment Setup:
SteadyMindMS consumes the YouTube API. In order to run in development, you will need to set up your environment variables.

Add the following environment variables to your `config/application.yml` file.

```
YOUTUBE-API-KEY: <YOUR YOUTUBE API KEY>  
```

## Tests
Run `bundle exec rspec` to run the test suite. Make sure you are connected to the internet and you set up your environmental variables correctly. 

## Development
To run SteadyMind in development, run `ruby lib/video_microservice.rb` and visit `localhost:4567`

## Endpoints

#### Returns All Videos: 
Request:
```
GET /api/v1/videos
Content-Type: application/json
Accept: application/json
```

Response: 
```
{"data": [
          {
            "id": "1",
            "type": "video",
            "attributes": {
                "title": "UnWind Yoga Flow and Meditation | Faith Hunter",
                "video_id": "e73mrxJVnco",
                "thumbnail_url": "https://i.ytimg.com/vi/e73mrxJVnco/default.jpg",
                "category": "yoga"
            }
          },
          {
            "id": "2",
            "type": "video",
            "attributes": {
                "title": "15 Minute Guided Meditation To Find Peace In Uncertain Times",
                "video_id": "W19PdslW7iw",
                "thumbnail_url": "https://i.ytimg.com/vi/W19PdslW7iw/default.jpg",
                "category": "meditation"
            }
          },
    ...
]}
```

#### Returns videos from Happy playlist
Request:
```
GET /api/v1/videos/happy
Content-Type: application/json
Accept: application/json
```

#### Returns videos from Sad playlist
Request:
```
GET /api/v1/videos/sad
Content-Type: application/json
Accept: application/json
```


#### Returns videos from Neutral playlist
Request:
```
GET /api/v1/videos/neutral
Content-Type: application/json
Accept: application/json
```
