require "rack/test"
require "chat_gpt_blocker/middleware"

RSpec.describe ChatGptBlocker::Middleware do
  include Rack::Test::Methods

  let(:app) do
    main_app = ->(_env) { [200, {"Content-Type" => "text/plain"}, ["Hello"]] }
    ChatGptBlocker::Middleware.new(main_app)
  end

  it "blocks requests with ChatGPT-User user agent" do
    header "User-Agent", "ChatGPT-User"
    get "/"

    expect(last_response.status).to eq(403)
    expect(last_response.body).to eq("Access Forbidden")
  end

  it "allows requests with other user agents" do
    header "User-Agent", "Mozilla/5.0"
    get "/"

    expect(last_response.status).to eq(200)
    expect(last_response.body).to eq("Hello")
  end
end
