module Annict
  module ApiMethods
    def works(params = {})
      send_get("/v1/works", params)
    end

    def episodes(params = {})
      send_get("/v1/episodes", params)
    end

    def records(params = {})
      send_get("/v1/records", params)
    end

    def users(params = {})
      send_get("/v1/users", params)
    end

    def following(params = {})
      send_get("/v1/following", params)
    end

    def followers(params = {})
      send_get("/v1/followers", params)
    end

    def activities(params = {})
      send_get("/v1/activities", params)
    end

    def me(params = {})
      send_get("/v1/me", params)
    end

    def change_status(params = {})
      send_post("/v1/me/statuses", params)
    end

    def add_record(params = {})
      send_post("/v1/me/records", params)
    end

    def own_works(params = {})
      send_get("/v1/me/works", params)
    end

    def programs(params = {})
      send_get("/v1/me/programs", params)
    end

    def following_activities(params = {})
      send_get("/v1/me/following_activities", params)
    end
  end
end
