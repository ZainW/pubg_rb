# PubgRb
[![Build Status](https://travis-ci.org/ZainW/pubg_rb.svg?branch=master)](https://travis-ci.org/ZainW/pubg_rb)

My gem is to make peoples lives easier when dealing with the pubtracker.com API, 

Version 0.1.0 contains a basic get request with basic tests.

0.2.0 will have a get_json method (0.1.0's get function), get will then return a profile object that will have deifferent methods to parse basic stats (wins, kills, ratings) and have them region based

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pubg_rb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pubg_rb

## Usage

Initiate the Api using 
```ruby
    pubg_client = PubgRb::Api.new('your key here')
```

You can get people's profile (using their in game name, steamid not supported yet)  
```ruby
    pubg_client.get("needmorewood")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ZainW/pubg_rb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PubgRb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ZainW/pubg_rb/blob/master/CODE_OF_CONDUCT.md).
