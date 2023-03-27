module ChatGptBlocker
  class Railtie < Rails::Railtie
    initializer "chat_gpt_blocker.insert_middleware" do |app|
      app.config.middleware.use ChatGptBlocker::Middleware
    end
  end
end
