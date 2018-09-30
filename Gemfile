source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.2.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
gem 'gaffe'

gem 'aws-sdk-s3', '~> 1.0.0.rc2'
gem 'devise'
gem 'foundation-rails'
gem 'autoprefixer-rails'
gem "figaro"
gem 'stripe'
gem 'jquery-rails'
gem 'jquery-minicolors-rails'
gem 'agilecrm-wrapper'
gem 'whois-parser'
gem 'stripe_event'
gem 'material_icons'
gem 'icomoon-rails'
gem 'cloudinary', require: false
gem 'activestorage-cloudinary-service'
gem "font-awesome-rails"
gem 'bootsnap', '>= 1.1.0', require: false
gem 'geocoder'
gem 'apartment'
gem 'mailgun-ruby', '~>1.1.6'
gem "mini_magick"
gem 'tinymce-rails', '~> 4.3'
gem 'rack-ssl-enforcer'

group :production do
  gem 'pg', '~> 0.18'
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
