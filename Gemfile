source 'https://rubygems.org'
ruby '2.1.0'

gem 'rails', github: 'rails', branch: '3-2-stable'

gem 'rails-i18n'

gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
  gem 'less-rails'
  gem 'twitter-bootstrap-rails'

  gem 'bourbon'
end

gem 'jquery-rails'

gem 'devise'
gem 'devise-i18n'
gem 'omniauth-twitter'

gem 'paperclip'
gem 'aws-sdk', '~> 1.3.4'

gem 'kaminari'
gem 'rspec-rails', :group => [:development, :test]

group :test do
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end
