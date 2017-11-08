source 'https://rubygems.org'

gem 'rake'
gem 'hanami',       '~> 1.1'
gem 'hanami-model', '~> 1.1'

gem 'pg'
gem 'slim'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'
  gem 'pry'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'minitest'
  gem "minitest-reporters"
  gem 'capybara'
end

group :production do
  # gem 'puma'
end
