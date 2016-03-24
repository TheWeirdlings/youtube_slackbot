Bundler.require(:default)
Dir[File.expand_path("../../lib/**/**.rb", __FILE__)].each { |f| require f }
require "pry"
