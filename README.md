# Twitter Bootstrap 3.3.1 for Rails 4

Twitter Bootstrap is a toolkit from Twitter designed to kickstart development
of webapps and sites. It includes base CSS/LESS/SCSS for typography, forms,
buttons, tables, grids, navigation, and more.

[![GitHub version](https://badge.fury.io/gh/pinifloyd%2FBootstrapToolkit.svg)](http://badge.fury.io/gh/pinifloyd%2FBootstrapToolkit)

## Installing the Gem

The BootstrapToolkit provides the Twitter Bootstrap stylesheets in LESS way. It
provides more customization options, like changing theme colors, and provides
useful LESS mixins for your code, but requires the LESS gem and the Ruby Racer
Javascript runtime.

Include these lines in the Gemfile to install BootstrapToolkit:

```ruby
gem "therubyracer"
gem "less-rails"
gem "bootstrap_toolkit', git: "git://github.com/pinifloyd/BootstrapToolkit.git"
```

Then run `bundle install` from the command line:

    bundle install

## Usage

BootstrapToolkit create next folders in your application and copy files into
them:

    app/assets/stylesheets/frameworks/twitter_bootstrap

If you run command without any options it will copy by default all LESS/JS and
initializer files:

    rails g bootstrap_toolkit:install

You may specify which files should be copy into your application:

    rails g bootstrap_toolkit:install --less all
    rails g bootstrap_toolkit:install --less alerts forms

For quick help run from the command line next command:

    rails g bootstrap_toolkit:install -h

## Changelog

<ul>
  <li>Version 0.0.1 - Initial</li>
  <li>Version 0.0.2 - Copy all LESS files</li>
</ul>

## Thanks

All twitter-bootstrap-rails contributors and http://twbs.github.io/bootstrap

## License

Copyright (c) 2014 Sergey Hanchar

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
