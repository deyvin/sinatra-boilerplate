require "bundler/setup"
Bundler.require(:default)

require "sinatra/base"
require "sinatra/activerecord"
require "json"

configure do
  set :json_encoder, :to_json
  set :json_content_type, :json
end

configure :development do
  set :database, { adapter: "sqlite3", database: "db/development.sqlite3" }
end

configure :test do
  set :database, { adapter: "sqlite3", database: "db/test.sqlite3" }
end

configure :production do
  set :database, ENV['DATABASE_URL'] || { adapter: "sqlite3", database: "db/production.sqlite3" }
end

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each { |file| require file }