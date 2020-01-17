require "mu/json/version"
require 'mu/result'

module Mu
  module JSON
    extend self

    # `value` is a string
    def parse(value)
      data = ::JSON.parse(value)
      Result.success(data)
    rescue ::JSON::ParserError, TypeError
      Result.error.code!(:invalid_json)
    end
  end
end
