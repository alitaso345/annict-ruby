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

## Documentation
https://docs.annict.com/

## Usage
## Annict::Client.new
```ruby
require 'annict'
client = Annict::Client.new(access_token: 'annict_access_token')
```

## Annict::Client#works
Available params

- `:fields`
- `:filter_ids`
- `:filter_season`
- `:filter_title`
- `:page`
- `:per_page`
- `:sort_id`
- `:sort_season`
- `sort_watchers_count`

```ruby
client.works
#=> GET /v1/works
```

## Annict::Client#episodes
Available params

- `:fields`
- `:filter_ids`
- `:filter_work_id`
- `:page`
- `:per_page`
- `:sort_id`
- `:sort_sort_number`

```ruby
client.episodes
#=> GET /v1/episodes
```

## Annict::Client#records
Available params

- `:fields`
- `:filter_ids`
- `:filter_episode_id`
- `:filter_has_record_comment`
- `:page`
- `:per_page`
- `:sort_id`
- `:sort_likes_count`

```ruby
client.records
#=> GET /v1/records
```

## Annict::Client#users
Available params

- `:fields`
- `:filter_ids`
- `:filter_usernames`
- `:page`
- `:per_page`
- `:sort_id`

```ruby
client.users
#=> GET /v1/users
```

## Annict::Client#following
Available params

- `:fields`
- `:filter_user_id`
- `:filter_usernames`
- `:page`
- `:per_page`
- `:sort_id`

```ruby
client.following
#=> GET /v1/following
```

## Annict::Client#followers
Available params

- `:fields`
- `:filter_user_id`
- `:filter_usernames`
- `:page`
- `:per_page`
- `:sort_id`

```ruby
client.followers
#=> GET /v1/followers
```

## Annict::Client#activities
Available params

- `:fields`
- `:filter_user_id`
- `:filter_usernames`
- `:page`
- `:per_page`
- `:sort_id`

```ruby
client.activities
#=> GET /v1/activities
```

## Annict::Client#me
Available params

- `:fields`

```ruby
client.me
#=> GET /v1/me
```

## Annict::Client#change_status
Necessary params

- `:word_id`
- `:kind`

```ruby
client.change_status({ work_id: 1808, kind: 'wanna_watch' })
#=> POST /v1/me/statuses
```

## Annict::Client#add_record
Necessary params

- `:episode_id`

Available params

- `:comment`
- `:rating`
- `:share_twitter`
- `:share_facebook`

```ruby
client.add_record({ episode_id: 1808, comment: 'えるたそ〜' })
#=> POST /v1/me/records
```

## Annict::Client#own_works
Available params

- `:fields`
- `:filter_ids`
- `:filter_season`
- `:filter_title`
- `:filter_status`
- `:page`
- `:per_page`
- `:sort_id`
- `:sort_season`
- `:sort_watchers_count`

```ruby
client.own_works
#=> GET /v1/me/works
```

## Annict:Client#programs
Available params

- `:fields`
- `:filter_ids`
- `:filter_channel_ids`
- `:filter_work_ids`
- `:filter_started_at_gt`
- `:filter_started_at_lt`
- `:filter_unwatched`
- `:filter_rebroadcast`
- `:page`
- `:per_page`
- `:sort_id`
- `:sort_started_at`

```ruby
client.programs
#=> GET /v1/me/programs
```

## Annict::Client#following_activities
Available params

- `:fields`
- `:filter_actions`
- `:filter_muted`
- `:page`
- `:per_page`
- `:sort_id`

```ruby
client.following_activities
#=> GET /v1/me/following_activities
```

## Contributing

1. Fork it ( https://github.com/alitaso345/annict-ruby/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

