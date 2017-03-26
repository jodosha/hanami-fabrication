# Hanami::Fabrication

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hanami-fabrication'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hanami-fabrication

## Usage

Add a fabricator:

```ruby
# spec/support/fabricators/user_fabricator.rb

Fabricator(:user) do
  name { "L" }
end
```

Create, build, attributes:

```ruby
Fabricate.create(:user)
  # => #<User:0x007f9e6a3cc1d8 @attributes={:id=>1, :name=>"L"}>

Fabricate.create(:user, name: "MG")
  # => #<User:0x007fb71dbf6180 @attributes={:id=>2, :name=>"MG"}>

Fabricate.build(:user)
  # => #<User:0x007fadc0d74bf8 @attributes={:name=>"L"}>

Fabricate.build(:user, name: "MG")
  # => #<User:0x007f95a3388ea8 @attributes={:name=>"MG"}>

Fabricate.attributes_for(:user)
  # => {:name=>"L"}

Fabricate.attributes_for(:user, name: "MG")
  # => {:name=>"MG"}
```

For a complete reference of the usage, please read [Fabrication docs](https://www.fabricationgem.org).

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jodosha/hanami-fabrication.
