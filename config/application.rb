require "rubygems"
require "bundler/setup"
Bundler.require(:default)
require_all "lib"

def app_init
  configure_figaro
end

def configure_figaro
  env = ENV["ENVIRONMENT"] || "development"
  Figaro.application = Figaro::Application.new(environment: env,
                                               path: "config/application.yml")
  Figaro.load
end
