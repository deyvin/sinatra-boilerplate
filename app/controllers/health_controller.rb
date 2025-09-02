require "sinatra/base"

class HealthController < Sinatra::Base
  get "/health" do
    content_type :json
    { status: "ok", service: "my-microservice" }.to_json
  end
end