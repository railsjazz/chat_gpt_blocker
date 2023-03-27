# frozen_string_literal: true

require_relative "lib/chat_gpt_blocker/version"

Gem::Specification.new do |spec|
  spec.name = "chat_gpt_blocker"
  spec.version = ChatGptBlocker::VERSION
  spec.authors = ["Igor Kasyanchuk", "Liubomyr Manastyretskyi"]
  spec.email = ["igorkasyanchuk@gmail.com", "manastyretskyi@gmail.com"]

  spec.summary = "Block ChatGPT-User"
  spec.description = "Simple gem (middlware) to block ChatGPT-User"
  spec.homepage = "https://github.com/railsjazz/chat_gpt_blocker"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.require_paths = ["lib"]

  spec.add_dependency "rack"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rack-test"
end
