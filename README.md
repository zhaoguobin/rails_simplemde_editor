# RailsSimplemdeEditor [![Gem Version](https://badge.fury.io/rb/rails_simplemde_editor.svg)](https://badge.fury.io/rb/rails_simplemde_editor)

SimpleMDE is a simple, embeddable, and beautiful JS markdown editor, visit https://simplemde.com/ for details.
rails_simplemde_editor will helps your rails app integrate with simplemde, includes images uploading.

## Installation

### 1. Installation

Add this line to your application's Gemfile:

```ruby
gem 'jquery-rails'
gem 'carrierwave'
gem 'mini_magick'
gem 'rails_simplemde_editor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_simplemde_editor

### 2. Run generator:

```bash
  rails g rails_simplemde_editor:install
```
Notice: rails_simplemde_editor needs applications.js/application.css in your project.

```bash
  rails g rails_simplemde_editor:migration
```

## Usage

```erb
<%= f.text_area :body, data: {owner_type: f.object.class.to_s, owner_id: f.object.id }, class: 'rails_simplemde' %>
```

## Customize

Create file `config/initializers/rails_simplemde.rb`

```ruby
# customize controller
Simplemde::AssetsController.class_eval do
  # code
end

# customize asset uploader
Simplemde::AssetUploader.class_eval do
  # code
end

# customize image uploader
Simplemde::ImageUploader.class_eval do
  # code
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zhaoguobin/rails_simplemde_editor. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RailsSimplemdeEditor project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rails_simplemde_editor/blob/master/CODE_OF_CONDUCT.md).
