ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'
require 'coveralls'
SimpleCov.formatter = Coveralls::SimpleCov::Formatter
SimpleCov.start do
  add_filter 'app/channels'
  add_filter 'app/jobs'
  add_filter 'app/mailers'
end
Coveralls.wear!('rails')

require File.expand_path('../../config/environment', __FILE__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'

require_relative './support/factories_helpers'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.include FactoryHelpers 
end
