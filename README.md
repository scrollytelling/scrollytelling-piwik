# Scrollytelling::Piwik

This [Pageflow](https://github.com/codevise/pageflow) Plugin will render the [Piwik](https://piwik.org) JavaScript snippet in your stories. This allows you to have your own analytics engine and not rely on third parties. At [Scrollytelling](https://www.scrollytelling.io) we use this because we wish not having to show a cookie warning. Naturally, we also do not wish to track our visitors for anything more than just counting them.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'scrollytelling-piwik'
```

Bundle the plugin with your application by typing this on the command line:

    $ bundle

## Usage

Register this plugin in your Pageflow initializer.

```
# config/initializers/pageflow.rb
config.plugin(Scrollytelling::Piwik::Plugin.new url: "//example.com/analytics/", site_id: 1)
```

Furthermore after installing any Pageflow plugin it's a good idea to change your asset version. This will invalidate all server-side cache, most notably the cache that `i18n-js` uses to render the editor UI.

```
# config/initializers/assets.rb
Rails.application.config.assets.version = 'x.x.x'
```

Then restart your application server.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/scrollytelling/scrollytelling-piwik. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.
