# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

require ::File.expand_path('../config/environment',  __FILE__)

use Rack::CanonicalHost, 'www.2min.co'
run Rails.application