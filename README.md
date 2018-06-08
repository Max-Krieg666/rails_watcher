# RailsWatcher
Welcome to RailsWatcher!
This gem allows you to monitor user&system activity in your application.

## Support Rails-versions:
Only 4.x +

## Installation
Add this line to your application's Gemfile:
```ruby
gem 'rails_watcher'
```

And then execute:
```bash
$ bundle install
```

Or install it yourself as:
```bash
$ gem install rails_watcher
```

Execute gem rake-task and install new migration:
```bash
$ bundle exec rails_watcher:install
$ bundle exec db:migrate
```

OK, now we prepare to start using!!!

## USAGE:
How to use? It's easy & comfortably.
....

Gem use standart-Application layout from your application,
so please do NOT forget change all links in your app/views/layouts/application.html.*

Example:
```ruby
link_to 'Users', users_path
```
you may change to:

```ruby
link_to 'Users', main_app.users_path
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
