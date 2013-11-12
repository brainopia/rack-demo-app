require 'bundler'
Bundler.require
require './lib/application'

Application::Assets.instance_eval do
  setup_paths! Application.root
  setup_gem_paths! 'semantic-ui-sass'

  sprockets.js_compressor = :uglifier
  sprockets.css_compressor = :scss
end

map '/assets' do
  run Application::Assets.sprockets
end

use Rack::LiveReload
run Application
