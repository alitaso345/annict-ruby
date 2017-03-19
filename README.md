# annict-ruby

A Ruby interface for Annict API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'annict'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install annict

## Usage

```ruby
# Initialization
client = Annict::Client.new()

client.works
#=> GET /v1/works

client.episodes
#=> GET /v1/episodes

client.records
#=> GET /v1/records

client.users
#=> GET /v1/users

client.following
#=> GET /v1/following

client.followers
#=> GET /v1/followers

client.activities
#=> GET /v1/activities
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/alitaso345/annict-ruby/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

