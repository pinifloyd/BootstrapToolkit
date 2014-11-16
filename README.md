# Twitter Bootstrap 3.3.1 for Rails 4

Twitter Bootstrap is a toolkit from Twitter designed to kickstart development
of webapps and sites. It includes base CSS/LESS/SCSS and HTML for typography,
forms, buttons, tables, grids, navigation, and more.

TwitterBootstrapToolkit integrates Twitter Bootstrap LESS for Rails Asset
Pipeline.

[![GitHub version](https://badge.fury.io/gh/pinifloyd/TwitterBootstrapToolkit.svg)](http://badge.fury.io/gh/pinifloyd/TwitterBootstrapToolkit)

## Installing the Gem

The TwitterBootstrapToolkit can provide the Twitter Bootstrap stylesheets in
[LESS](http://lesscss.org/) way. It provides more customization options, like
changing theme colors, and provides useful LESS mixins for your code, but
requires the LESS gem and the Ruby Racer Javascript runtime (not available on
Microsoft Windows).

Include these lines in the Gemfile to install TwitterBootstrapToolkit:

```ruby
gem "therubyracer"
gem "less-rails"
gem "twitter_bootstrap_toolkit', git: "git://github.com/pinifloyd/TwitterBootstrapToolkit.git"
```

Then run `bundle install` from the command line:

    bundle install

## Changelog

<ul>
  <li>Version 0.0.1 (WIP)</li>
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
