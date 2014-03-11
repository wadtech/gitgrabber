require 'simplecov'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
]

SimpleCov.start do
  add_filter '/spec/'
  minimum_coverage(99.39)
end

require 'git_grabber'
require 'rspec'
require 'webmock/rspec'

WebMock.disable_net_connect!(:allow => 'localhost')

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
