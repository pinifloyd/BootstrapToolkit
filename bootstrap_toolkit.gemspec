# lib = File.expand_path("../lib", __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# require "bootstrap_toolkit/version"

require File.expand_path("../lib/bootstrap_toolkit/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name        = "bootstrap_toolkit"
  spec.version     = BootstrapToolkit::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ["Sergey Hanchar"]
  spec.email       = ["hanchar.sergey@gmail.com"]
  spec.summary     = "Twitter Bootstrap Toolkit"
  spec.description = "Provide Twitter Bootstrap styles, methods, helpers..."
  spec.homepage    = "https://github.com/pinifloyd/BootstrapToolkit"
  spec.license     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  # TODO: check other ruby versions
  spec.required_ruby_version = ">= 2.1.2"

  spec.add_development_dependency "rails", "~> 4.1.7"

  spec.post_install_message = <<-MSG
    Important: You may need to add a javascript runtime to you Gemfile.

    ***************************************************************************
    ExecJS supports these runtimes:

    therubyracer         - Google V8 embedded within Ruby
    therubyrhino         - Mozilla Rhino embedded within JRuby
    Apple JavaScriptCore - Included with Mac OS X
    JScript              - Microsoft Windows Script Host
    Node.js
    ***************************************************************************

    Thanks for install. Have a nice day ;)
  MSG
end