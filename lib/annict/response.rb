module Annict
  class Response
    attr_reader :body, :headers, :status

    def initialize(faraday_response)
      @body = faraday_response.body
      @headers = faraday_response.headers
      @status = faraday_response.status
    end
  end
end
