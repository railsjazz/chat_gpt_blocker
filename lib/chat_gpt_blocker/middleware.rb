module ChatGptBlocker
  class Middleware
    CHAT_GPT_USER_AGENT_PATTERN = /ChatGPT-User/i

    def initialize(app)
      @app = app
    end

    def call(env)
      request = Rack::Request.new(env)

      if request.user_agent.to_s.match?(CHAT_GPT_USER_AGENT_PATTERN)
        [403, { "Content-Type" => "text/plain" }, ["Access Forbidden"]]
      else
        @app.call(env)
      end
    end
  end
end
