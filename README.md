# Snap columns

This is a small coding challenge to divide a set of given words received over STDIN in 3 columns as evenly as possible.

## Running

This is a Ruby program, and has been tested on Ruby 2+.

You can see the program in action by running:

```sh
ruby print.rb
```

Or even mark it as executable and run it directly:

```sh
chmod +x print.rb
./print.rb
```

You can feed the program with a file, like this:

```sh
# example.txt provided in repository as example
./print.rb example.txt
```

Or just run directly, and enter your words by hand:

```sh
# After your words press enter then escape generating EOF via Ctrl/Cmd+D on Unix and Ctrl+Z on Windows.
./print.rb
a b c d e f g h
a d g
b e h
c f
```

## Code

The print program only prints on STDOUT a matrix generated by a small library inside the `snap_columns` folder, where the sorting and reordering actually takes place.

In a true "ruby" fashion, to avoid code duplication, a small class has been written extending the core Array to add the maximum size of elements functionality to the arrays.

## Tests

Also included are a couple of unit tests, written with RSpec.

Install bundler and install dependencies:

```sh
gem install bundler
bundle
```

Then run rspec to see the example running:

```sh
bundle exec rspec
.........

Finished in 0.00604 seconds (files took 0.12993 seconds to load)
9 examples, 0 failures

Coverage report generated for RSpec to /Users/stefanonada/Documents/Personal/Progetti/snap_columns/coverage. 12 / 12 LOC (100.0%) covered.
```

As you can see, a report is generated inside the coverage folder: open `coverage/index.html` file to see how the
