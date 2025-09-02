require "sinatra/base"
require_relative "../app/controllers/health_controller"

class Routes < Sinatra::Base
  use HealthController
end