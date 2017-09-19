require "pubg_rb/version"
require "json"
require 'net/http'
require "oj"
require "pubg_rb/profile"

module PubgRb
  Oj.mimic_JSON
  class Api
    attr_accessor :api_key
    def initialize (api_key = nil)
      @api_key = !api_key.nil? ? api_key : raise(ArgumentError, "Add an `api_key`")
    end
    def get_json(nickname = nil)
      nickname = !nickname.nil? ? nickname : raise(ArgumentError, " Nickname not defined: Add your pubg nickname")
      uri = URI.parse("https://pubgtracker.com/api/profile/pc/#{nickname}")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true      
      request = Net::HTTP::Get.new(uri.request_uri)
      request.add_field("TRN-Api-Key", @api_key)
      response = http.request(request)

      JSON.parse(response.body)
    end
    def get (nickname = nil)
      nickname = !nickname.nil? ? nickname : raise(ArgumentError, " Nickname not defined: Add your pubg nickname")
      uri = URI.parse("https://pubgtracker.com/api/profile/pc/#{nickname}")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true      
      request = Net::HTTP::Get.new(uri.request_uri)
      request.add_field("TRN-Api-Key", @api_key)
      response = http.request(request)

      json = JSON.parse(response.body)
      Profile.new(json)
    end
  end
end
