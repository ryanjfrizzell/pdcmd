$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require "pdcmd/version"

Gem::Specification.new do |spec|
  spec.name          = "pdcmd"
  spec.version       = PDCmd::VERSION
  spec.authors       = ["Ryan Frizzell"]

  spec.summary       = %q{simple gem command line wrapper}
  spec.description   = %q{view README in the GitHub repo}
  spec.homepage      = "https://github.com/ryanjfrizzell/pdcmd"
  spec.license       = "MIT"

  spec.files         = %w{LICENSE.txt README.md Gemfile Rakefile} + Dir.glob("*.gemspec") + Dir.glob("{docs,lib,spec}/**/*")
  spec.bindir        = "bin"
  spec.executables   << 'pdcmd'
  spec.require_paths  << "lib"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_dependency "pagerduty", "~> 2.1"
  spec.add_dependency "mixlib-cli", "~> 1.7"
end
