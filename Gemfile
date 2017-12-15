source 'https://rubygems.org'

gem 'rails', '~> 5.1.1'

# Use Puma as the app server
gem 'puma', '~> 3.7'

gem 'jbuilder', '~> 2.5'
gem 'mysql2'

group :development, :test do
  gem 'byebug', platform: :mri

  gem 'factory_girl_rails', require: false
  gem 'faker'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console'

  gem 'pry-rails'

  # Linters
  gem 'overcommit'
  gem 'rubocop'
  gem 'rubocop-rspec'

  gem 'coveralls', require: false
end

group :test do
  gem 'database_cleaner', require: false
  gem 'rspec-rails'
  gem 'pact'
end
