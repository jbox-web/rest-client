source "https://rubygems.org"

if !!File::ALT_SEPARATOR
  puts "on: windows (#{RUBY_PLATFORM})"
  gemspec :name => 'rest-client.windows'
else
  puts "on: linux (#{RUBY_PLATFORM})"
  gemspec :name => 'rest-client'
end
