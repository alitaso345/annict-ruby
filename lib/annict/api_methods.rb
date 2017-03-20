module Annict
  module ApiMethods
    def works(params = {})
      send_get("/v1/works", params)
    end
  end
end
