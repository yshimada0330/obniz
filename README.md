# Obniz

A Ruby client for the [obniz](https://obniz.io/) REST APIs. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'obniz'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install obniz

## Usage

### clinet initialize
```ruby
client = Obniz::Client.new(obniz_id: 'xxxx-xxxx')
```
or
```ruby
client = Obniz::Client.new(obniz_id: 'xxxx-xxxx', access_token: 'xxxxxxxx')
```

### call api
#### display
```ruby
client.post([{ display: { clear: true, text: 'hello world' } }])
```

#### LED
io0 is connected to anode, io1 is cathode
```ruby
client.post([{ io0: true, io1: false } ])
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/obniz. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Obniz project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/obniz/blob/master/CODE_OF_CONDUCT.md).
