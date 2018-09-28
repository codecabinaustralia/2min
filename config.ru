# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
use Rack::CanonicalHost, 'www.2min.co', if: /.*\.2min\.co/
run Rails.application