require "bundler"

Bundler.require

set :port, ENV.fetch("PORT", 8080)
set :bind, "0.0.0.0"
set :logging, false

get "/*" do
  ENV.fetch("ECHO", "echo")
end
