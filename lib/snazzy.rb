# frozen_string_literal: true

require_relative "snazzy/version"
Dir[File.join(__dir__, 'snazzy/components/**/*.rb')].each { |file| require file }

module Snazzy
  class Error < StandardError; end
  # Your code goes here...
end
