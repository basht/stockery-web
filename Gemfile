source 'http://rubygems.org'

gem 'rails', '3.1.0'
gem 'rack', '1.3.3'

gem 'mongo_mapper'
gem 'mongo', '1.4.0'
gem 'bson_ext', '1.4.0'

gem 'stockery'

gem 'haml-rails'
gem 'postmark-rails'

gem 'rails3-generators' # gives you generator for mongomapper

group :assets do
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
  gem 'less'
end

gem 'jquery-rails'

# gem 'unicorn'
# gem 'capistrano'
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development do

end

group :test, :development do
  gem 'rspec-rails'
end

group :test do
  gem 'turn', :require => false

  gem 'spork' # autoreload of spec
  gem 'guard-spork' # does spork
  gem 'guard-rspec' # does rspec
  gem 'guard-bundler' # does bundler

  gem 'rb-fsevent' # used for guard
  # gem 'growl'
  gem 'growl_notify' # nice notifications

  gem 'webrat'
  gem 'factory_girl_rails', '~> 1.2'
  gem 'database_cleaner'
end
