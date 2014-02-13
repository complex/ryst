require File.expand_path('../boot', __FILE__)
require 'rails/all'

Bundler.require(:default, Rails.env)

module Ryst

  class Application < Rails::Application
    config.assets.precompile += [ 'dark.css' ]
  end

end
