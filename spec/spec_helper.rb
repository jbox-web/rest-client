# require test gems
require 'simplecov'
require 'rspec'
require 'webmock/rspec'

# start Simplecov
SimpleCov.start do
  add_filter 'spec/'
end

# require test helpers
require_relative 'helpers'

# configure RSpec
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.raise_errors_for_deprecations!

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'

  # always run with ruby warnings enabled
  # TODO: figure out why this is so obscenely noisy (rspec bug?)
  # config.warnings = true

  # add helpers
  config.include Helpers, :include_helpers

  config.mock_with :rspec do |mocks|
    mocks.yield_receiver_to_any_instance_implementation_blocks = true
  end
end

# load our own gem to test
require 'rest-client'

# always run with ruby warnings enabled (see above)
$VERBOSE = true
