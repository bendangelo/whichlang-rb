Whatlang
========

Ruby bindings for [Whichlang](https://github.com/quickwit-oss/whichlang/tree/main), a natural language detection for Rust.

This is a fork of the original [whatlang-rb](https://gitlab.com/KitaitiMakoto/whatlang-rb) but this adds an interface to the [whichlang](https://github.com/quickwit-oss/whichlang/tree/main) library. It's faster and detects languages better (although not as many languages).

Features
--------

Features are derived from original [Whichlang][] library, which includes:

* Throughput above 100 MB/s for short and long strings.
* Good accuracy (99.5% on my validation dataset, but it really depends on the size of your input.)
* Supported languages: Arabic, Dutch, English, French, German, Hindi, Italian, Japanese, Korean, Mandarin, Portuguese, Russian, Spanish, Swedish, Turkish, and Vietnamese.

Installation
------------

### Requirements

You need Rust's build environment to install this gem.

For Unix like system, run

    % curl https://sh.rustup.rs -sSf | sh

For Windows, download and run [installer][].

See [Rust official installation page][] for details.

### Gem installation

Add this line to your application's Gemfile:

```ruby
gem 'whichlang'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install whichlang

Usage
-----

    require "whichlang"
    
    text = "Благодаря Эсперанто вы обрётете друзей по всему миру!"
    
    info = whichlang.detect(text) # => "rus"
    
    text = "Jen la trinkejo fermitis, ni iras tra mallumo kaj pluvo."

    info = whichlang.detect(text) # => "spa"

    # blank spaces and nil are ignored
    info = whichlang.detect(" ") # => nil
    info = whichlang.detect("") # => nil
    info = whichlang.detect(nil) # => nil

Development
-----------

After checking out the repo, run `bundle config set local vendor/bundle && bundle install` to install dependencies. Then, run `bundle exec rake test` to run the tests. You can also run `bundle exec rake console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `Cargo.toml`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

Contributing
------------

Bug reports and pull requests are welcome on GitHub at https://gitlab.com/bendangelo/whichlang-rb.

License
-------

This RubyGem distributed under the Ruby's license. See {file:COPYING} file.

[Whichlang]: https://github.com/quickwit-oss/whichlang/tree/main
[installer]: https://static.rust-lang.org/rustup/dist/i686-pc-windows-gnu/rustup-init.exe
[Rust official installation page]: https://www.rust-lang.org/tools/install
[whatland-rb]: https://gitlab.com/KitaitiMakoto/whatlang-rb
