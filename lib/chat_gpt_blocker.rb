# frozen_string_literal: true

require_relative "chat_gpt_blocker/version"
require_relative "chat_gpt_blocker/middleware"
require_relative "chat_gpt_blocker/railtie" if defined?(Rails)

module ChatGptBlocker
end
