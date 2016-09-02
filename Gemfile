source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '~> 5.0.0'
gem 'pg', '~> 0.18.4'
gem 'puma', '~> 3.0'

gem 'figaro', '~> 1.1.1'
gem 'jbuilder', '~> 2.5'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails', '~> 4.1.1'
gem 'haml-rails', '~> 0.9.0'
gem 'sass-rails', '~> 5.0'

gem 'devise', '~> 4.2.0'
gem 'omniauth', '~> 1.3.1'
gem 'omniauth-facebook', '~> 4.0.0'
gem 'omniauth-twitter', '~> 1.2.1'
gem 'omniauth-linkedin', '~> 0.2.0'
gem 'omniauth-google-oauth2', '~> 0.4.1'
gem 'mini_magick', '~> 4.5.1'
gem 'friendly_id', '~> 5.1.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 9.0.5', platform: :mri

  gem 'rubocop', '~> 0.42.0'
  gem 'rubocop-rspec', '~> 1.6.0'
  gem 'rspec-rails', '~> 3.5.1'
  gem 'factory_girl_rails', '~> 4.7.0'
  gem 'brakeman', '~> 3.3.3', require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '~> 3.3.1'
  gem 'better_errors', '~> 2.1.1'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'meta_request', '~> 0.4.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background.
  gem 'spring', '~> 1.7.2'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'guard', '~> 2.14.0'
  gem 'guard-brakeman', '~> 0.8.3'
  gem 'guard-coffeelint', '~> 0.1.5'
  gem 'guard-haml_lint', '~> 0.1.4'
  gem 'guard-pow', '~> 2.0.0', require: false
  gem 'guard-rubocop', '~> 1.2.0'
  gem 'guard-rspec', '~> 4.7.3'
end

group :test do
  gem 'capybara', '~> 2.7.1'
end
