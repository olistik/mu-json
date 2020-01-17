# Mu::Json

This is a simple wrapper around `JSON.parse`.
It returns a result object instead of throwing exceptions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mu-json'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mu-json

## Usage

```ruby
require 'mu/json'

result = Mu::JSON.parse(nil)
result.error? # => true
result.code # => :invalid_json

result = Mu::JSON.parse('')
result.error? # => true
result.code # => :invalid_json

result = Mu::JSON.parse('{"foo": "bar"}')
result.success? # => true
result.unwrap # => {"foo"=>"bar"}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mu-json. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Mu::Json project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/mu-json/blob/master/CODE_OF_CONDUCT.md).
