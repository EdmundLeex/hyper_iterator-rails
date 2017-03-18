# HyperIterator-Rails

This gem is a Rails adapter for the [hyper_iterator](https://github.com/EdmundLeex/hyper_iterator) gem. 
Before you start using this, **please read the docs of [hyper_iterator](https://github.com/EdmundLeex/hyper_iterator)!**

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hyper_iterator-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hyper_iterator

## Available Methods (adding more)

### For Array
- `each_slice!`
- `each!`
- `HyperIterator.each!`: This is the same as `each!`. But it takes an array as argument. 
This is added because there are gems that implement their own `each` method (e.g. the pg 
gem). Instead of monkey patching all the gems out there, this is a compromise for flexibility.

### For Result from ActiveRecord Query

```ruby
users = User.where(...)
users.each! { |user| ... }

# each_slice! is not available yet.
```

## Gotcha

These methods work just as the non bang version, except that, it **WILL MUTATE** the original array 
by **REMOVING ALL** the elements from it.

```ruby
arr = (1..10).to_a
arr.each! { |el| ... }
# After the iteration, the arr is empty!
# arr => []
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/edmundleex/hyper_iterator-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

