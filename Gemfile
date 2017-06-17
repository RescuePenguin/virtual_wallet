source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgres as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# User Management
gem 'devise'

## Security and Permissions
gem 'pundit' # User permissions

gem 'foreman' # Start local servers with scripts

group :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'rspec-rails'                        # Testing framework for Rails
  gem 'factory_girl_rails', require: false # Use factories to generate stub like objects for tests
  gem 'fuubar'                             # Progress bar and color indicators for running tests
  gem 'shoulda-matchers'                   # Adds '.should' and related test matchers
  gem 'timecop'                            # Test time sensitive methods
  gem 'simplecov',      require: false     # Code coverage tool
  gem 'simplecov-rcov', require: false     # Rspec plugin for Simplecov
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'byebug' # Console enabled breakpoints
  gem 'spring' # Speeds up development by keeping your application running in the background
  gem 'bullet' # Database query analytics and optimization
  # Used for live reloading assets on development pages... no browser extension necessary!
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
