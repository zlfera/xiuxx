source 'https://rubygems.org'
ruby '2.1.3'
# Distribute your app as a gem
# gemspec
# Server requirements
gem 'puma'
gem 'activerecord'
group :production do
  gem 'newrelic_rpm'
  gem 'pg'
  gem 'nokogiri'
end
# gem 'trinidad', :platform => 'jruby'
group :development do
  gem 'padrino-gen', '>=0.12.2'
  gem 'sqlite3'
end
# Optional JSON codec (faster performance)
# gem 'oj'

# Project requirements
gem 'rake'

# Component requirements
gem 'slim'

# Test requirements

# Padrino Stable Gem
# gem 'padrino', '>=0.12.2'

# Or Padrino Edge
# gem 'padrino', :github => 'padrino/padrino-framework'

# Or Individual Gems
%w(core support helpers cache).each do |g|
  gem 'padrino-' + g, '>=0.12.2'
end
