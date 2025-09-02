require "sinatra/base"
require_relative "../config/environment"
require_relative "../config/routes"

class App < Sinatra::Base
  configure do
    set :public_folder, "public"
    set :views, "app/views"
  end

  use Routes

  run! if app_file == $0
end