# frozen_string_literal: true

source "https://rubygems.org"

# if we are not in CI use dynamic gemspec.
# In CI the gemspec in move around.
if ENV.fetch('CI', false) == false
  if !!File::ALT_SEPARATOR
    puts "On windows"
    gemspec :name => 'rest-client.windows'
  else
    puts "On linux"
    gemspec :name => 'rest-client'
  end
else
  gemspec
end
