require "faraday"
require "faraday_middleware"
require "annict/api_methods"
require "annict/response"

module Annict
  class Client
    include ApiMethods

    ENDPOINT_BASE_URL = "https://api.annict.com"

    def initialize(access_token: nil)
      @access_token = access_token
    end
    attr_reader :access_token

    def send_get(path, params = nil)
      send_request(:get, path, params)
    end

    def send_request(method, path, params)
      Annict::Response.new(annict_connection.send(method, path, params))
    end

    def annict_connection
      @annict_connection ||= Faraday.new(faraday_options) do |faraday|
        faraday.request :json
        faraday.response :json
        faraday.adapter Faraday.default_adapter
      end
    end

    private

    def faraday_options
      {
        url: ENDPOINT_BASE_URL,
        headers: faraday_headers
      }
    end

    def faraday_headers
      return default_headers unless access_token
      default_headers.merge(Authorization: "Bearer #{access_token}")
    end

    def default_headers
      {
        'Accept' => 'application/json',
        'User-Agent' => "Annict Ruby Gem #{Annict::VERSION}"
      }
    end
  end
end
