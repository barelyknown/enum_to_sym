# enum_to_sym

Ruby on Rails [added support for enum columns](http://edgeguides.rubyonrails.org/4_1_release_notes.html) in ActiveRecord in version 4.1.

Unfortunately, the return value of an enum attribute is a string which seems inconsistent with the rest of the feature and [it's not clear if this will get changed](https://github.com/rails/rails/pull/13448).

```ruby
class Foo < ActiveRecord::Base
  enum status: [:foo, :bar]
end

> foo = Foo.new(status: :bar)
> foo.status  # => "bar" 👎

```

This gem changes that behavior so that enum attributes return symbols instead. It also adds an `is?(name)` method as an alternative based on a [comment made in this thread](https://github.com/rails/rails/pull/13448).

```ruby
class Foo < ActiveRecord::Base
  enum status: [:foo, :bar]
end

> foo = Foo.new(status: :bar)
> foo.status  # => :bar 👍
> foo.is?(:bar) # => true

```

Add this to your gemfile and your enum attributes will return as symbols.

```ruby
gem 'enum_to_sym'
```