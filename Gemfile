source 'https://rubygems.org'

gem 'rails', '4.1.6'
gem 'dotenv-rails', '2.0.1', groups: [:development, :test]
gem 'puma', '2.11.3'

# Authentication
gem 'clearance', '1.10.1'

# DB
gem 'pg'
gem 'activerecord-postgis-adapter', '~> 2.2.1'

# Stylesheets
gem 'sass-rails', '~> 5.0.3'
gem 'semantic-ui-sass', github: 'doabit/semantic-ui-sass', branch: 'master'

# JS
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'react-rails', '1.0'

# Templating
gem 'haml', '4.0.6'

# gem 'therubyracer',  platforms: :ruby

gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'thin', '1.6.3'
  gem 'quiet_assets', '1.1.0'
  gem 'better_errors', '~> 2.0.0'
  gem 'binding_of_caller', '~> 0.7.2'
end

group :development, :test  do
  gem 'spring'
  gem 'rspec-rails', '~> 3.1.0'
  gem 'pry-rails', '~> 0.3.2'
  gem 'pry-byebug', '~> 2.0.0'
  gem 'guard-rspec', '~> 4.3.1'
  gem 'spring-commands-rspec'
  gem 'factory_girl_rails','~> 4.5.0'
  gem 'faker', '1.4.3'
end

group :doc do
  gem 'sdoc', '~> 0.4.0'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

