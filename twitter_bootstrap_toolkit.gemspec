lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "twitter_bootstrap_toolkit/version"

Gem::Specification.new do |spec|
  spec.name        = "twitter_bootstrap_toolkit"
  spec.version     = TwitterBootstrapToolkit::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ["Sergey Hanchar"]
  spec.email       = ["hanchar.sergey@gmail.com"]
  spec.summary     = %q{Twitter Bootstrap Less Toolkit}
  spec.description = %q{Twitter Bootstrap Less Toolkit}
  spec.homepage    = ""
  spec.license     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.post_install_message = <<-MSG
    Important: You may need to add a javascript runtime to you Gemfile.

    ***************************************************************************
    ExecJS supports these runtimes:

    therubyracer - Google V8 embedded within Ruby
    therubyrhino - Mozilla Rhino embedded within JRuby
    Node.js
    Apple JavaScriptCore - Included with Mac OS X
    Microsoft Windows Script Host (JScript)
    ***************************************************************************
  MSG
end

# spec.add_dependency             'railties',   '>= 3.1'
# spec.add_dependency             'actionpack', '>= 3.1'
# spec.add_runtime_dependency     'execjs'
# spec.add_runtime_dependency     'rails', '>= 3.1'
# spec.add_development_dependency 'less'
# spec.add_development_dependency 'therubyracer'