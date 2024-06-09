# RoutesSplitter

`routes_splitter` is a gem designed to help you manage your Rails application's routes by splitting a large `routes.rb` file into smaller, more manageable files, typically organized by topic (e.g., `api`, `webui`, etc.).

## Usage

To use `routes_splitter`, simply add your routes to separate files within a designated directory, such as `config/routes`. For example, you might have `config/routes/api.rb` and `config/routes/webui.rb`. Then, in your main `routes.rb` file, you can include these smaller route files.

Example structure:

```
config/
  routes/
    api.rb
    webui.rb
routes.rb
```

In your `routes.rb`:

```ruby
# routes.rb
Rails.application.routes.draw do
  draw :api
  draw :webui
end
```

In your `config/routes/api.rb`:

```ruby
# config/routes/api.rb
namespace :api do
  resources :users
  resources :posts
end
```

In your `config/routes/webui.rb`:

```ruby
# config/routes/webui.rb
resources :dashboard
resources :settings
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'routes_splitter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install routes_splitter
```

## Contributing

If you would like to contribute to `routes_splitter`, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Write tests for your changes.
4. Make your changes.
5. Run the tests, ensuring they all pass.
6. Submit a pull request.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
