# Geometry

## Problem description

A library to compute distance between two given points.

## Usage

Point Entity:
To use the Point class import it in the required file. Then make the object like:<br>
`<variable_name> = Point(<value of x coordinate>, <value of y coordinate>)`


Line Entity: To use the line entity import it in the required file. Then make the object like:<br>
`<variable_name> = Line(point_A, point_B)`

NOTE: point_A, point_B are objects of point class.

To calculate the length of a line call distance property on the object like:<br>
`<variable_name>.distance`

To calculate distance between two points using compute function:<br>
`<point_object_one>.distance(<point_object_two>)`

## Installation

Add this geometry to your application's Gemfile:

```ruby
gem 'geometry'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geometry

## Build instructions

TODO: Build instruction to be updated

## Test instruction

`$ bundle exec rspec`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can
also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the
version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/geometry. This project is intended to
be a safe, welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conducts

Everyone interacting in the geometry project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow
the [code of conduct](https://github.com/[USERNAME]/geometry/blob/master/CODE_OF_CONDUCT.md).
