# enum_to_sym

Ruby on Rails [added support for enum columns](http://edgeguides.rubyonrails.org/4_1_release_notes.html) in ActiveRecord in version 4.1.

Unfortunately, the return value of an enum attribute is a string which seems inconsistent with the rest of the feature.

```ruby
class Foo < ActiveRecord::Base
  enum status: [:foo, :bar]
end

> foo = Foo.new(status: :bar)
> foo.status  # => "bar" 👎

```

This gem changes that behavior so that enum columns return a symbol instead.

```ruby
class Foo < ActiveRecord::Base
  enum status: [:foo, :bar]
end

> foo = Foo.new(status: :bar)
> foo.status  # => :bar 👍

```

Add this to your gemfile and your enum attributes will return as symbols.

```ruby
gem 'enum_to_sym'
```