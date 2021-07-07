# OmniAuth Fiken Strategy

This gem provides a simple way to authenticate to Fiken using OmniAuth with OAuth2.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-fiken'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-fiken

## Usage

1. Get your client key & secret from Fiken [here](https://api.fiken.no/api/v2/docs/)
2. Configure omniauth or Devise or whatever you're using to use this as another oauth provider.

This looks something like below for Devise.
```ruby
Devise.setup do |config|
  ...
  config.omniauth :fiken, ENV['FIKEN_CLIENT_KEY'], ENV['FIKEN_CLIENT_SECRET']
end
```

##

Based on [omniauth-notion](https://github.com/jeremiahchurch/omniauth-notion) by JeremiahChurch.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
