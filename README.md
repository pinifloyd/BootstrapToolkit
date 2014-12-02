# Twitter Bootstrap 3.3.1 for Rails 4

Twitter Bootstrap is a toolkit from Twitter designed to kickstart development
of webapps and sites. It includes base styles in LESS format for typography,
forms, buttons, tables, grids, navigation, and more.

[![GitHub version](https://badge.fury.io/gh/pinifloyd%2FBootstrapToolkit.svg)](http://badge.fury.io/gh/pinifloyd%2FBootstrapToolkit)

## Installing the Gem

For using LESS we require the LESS gem and the Ruby Racer Javascript runtime.
Include these lines into Gemfile for using BootstrapToolkit:

```ruby
  gem "therubyracer"
  gem "less-rails"
  gem "bootstrap_toolkit", git: "git://github.com/pinifloyd/BootstrapToolkit.git"
```

Then run `bundle install` from the command line:

```console
  bundle install
```

## Usage

### Stylesheets

You may include all stylesheets into your project. To do that just add next
line into your manifest file (app/assets/stylesheets/application.css):

```
  ...
  *= require bootstrap_toolkit/bootstrap
  ...
```

Or you may include only specific stylesheets. To do that just add files which
you need into your manifest file (app/assets/stylesheets/application.css):

```
  ...
  *= require bootstrap_toolkit/variables
  *= require bootstrap_toolkit/mixins/forms
  *= require bootstrap_toolkit/styles/normalize
  *= require bootstrap_toolkit/styles/forms
  ...
```

### Javascripts

You may include all javascripts into your project. To do that just add next
line into your manifest file (app/assets/javascripts/application.js):

```
  ...
  //= require bootstrap_toolkit/bootstrap
  ...
```

Or you may include only specific javascripts. To do that just add files which
you need into your manifest file (app/assets/javascripts/application.js):

```
  ...
  //= require bootstrap_toolkit/alert
  //= require bootstrap_toolkit/button
  //= require bootstrap_toolkit/tab
  //= require bootstrap_toolkit/modal
  ...
```

## Structure

### Fonts

```
  app/assets/fonts
  |-- bootstrap_toolkit
  |   |-- glyphicons-halflings-regular.eot
  |   |-- glyphicons-halflings-regular.svg
  |   |-- glyphicons-halflings-regular.ttf
  |   |-- glyphicons-halflings-regular.woff
```

### Javascripts

```
  app/assets/javascripts
  |-- bootstrap_toolkit
  |   |-- affix.js
  |   |-- alert.js
  |   |-- bootstrap.js
  |   |-- button.js
  |   |-- carousel.js
  |   |-- collapse.js
  |   |-- dropdown.js
  |   |-- modal.js
  |   |-- popover.js
  |   |-- scrollspy.js
  |   |-- tab.js
  |   |-- tooltip.js
  |   |-- transition.js
```

### Stylesheets

```
  app/assets/stylesheets
  |-- bootstrap_toolkit
  |   |-- mixins
  |   |   |-- forms.less
  |   |   |-- ...
  |   |   |-- size.less
  |   |-- styles
  |   |   |-- forms.less
  |   |   |-- ...
  |   |   |-- wells.less
  |   |-- bootstrap.less
  |   |-- mixins.less
  |   |-- styles.less
  |   |-- variables.less
```

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
