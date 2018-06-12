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
$ bundle exec rake rails_watcher:install
$ bundle exec rake db:migrate
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

To include RailsWatcher EventCreator in your app add follow lines to your code:

```ruby
RailsWatcher::EventCreator.start(
  {
    title: 'Smth happens.',
    status: 'error', # default is 'success'
    kind: 'manual', # also possible kind - 'automatical'
    data: { param1: '111' }, # provide necessary request data: using params, etc.
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', # optional text field
    user_login: @user.login, # anything field
    user_ip: request.remote_ip # user ip
  }
)
```

After this steps you can use next pages (simple form and view interface):

```ruby
your_site.com/rails_watcher/events
your_site.com/rails_watcher/events/:id
your_site.com/rails_watcher/statistics
```

If you use not-Rails front-end, gem gives you an API. This is full list of API routes:

```ruby
your_site.com/rails_watcher/api/v1/events (with blank params)
your_site.com/rails_watcher/api/v1/events (with params: title, status, kind, user_login, user_ip)
your_site.com/rails_watcher/api/v1/events/:id
your_site.com/rails_watcher/api/v1/statistics/daily
your_site.com/rails_watcher/api/v1/statistics/monthly
your_site.com/rails_watcher/api/v1/statistics/yearly
your_site.com/rails_watcher/api/v1/statistics/all_time
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
