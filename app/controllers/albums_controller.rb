class AlbumsController < ApplicationController
    def index
        require 'net/http'
        require 'json'

        @url = 'https://stg-resque.hakuapp.com/albums.json'
        @uri = URI(@url)
        @response = Net::HTTP.get(@uri)
        @output = JSON.parse(@response)

        # @url_tracks = 'https://stg-resque.hakuapp.com/songs.json?album_id=1'
        # @uri_tracks = URI(@url_tracks)
        # @response_tracks = Net::HTTP.get(@uri)
        # @output_tracks = JSON.parse(@response)
        
    end

end
