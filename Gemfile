source 'https://rubygems.org'
ruby '2.1.2'
# Distribute your app as a gem
# gemspec

# Server requirements
gem 'puma'
# gem 'trinidad', :platform => 'jruby'

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
%w(core support gen helpers cache).each do |g|
  gem 'padrino-' + g, '>=0.12.2'
end
