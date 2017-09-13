# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pubg_rb/version"

Gem::Specification.new do |spec|
  spec.name          = "pubg_rb"
  spec.version       = PubgRb::VERSION
  spec.authors       = ["Zain Wania"]
  spec.email         = ["zainxwania@gmail.com"]

  spec.summary       = %q{This is a basic wrapper for the pubgtracker.com API }
  spec.description   = %q{Unofficial Ruby Gem for pubgtracker.com. if there is an issue with the API itself then contact the people at pubgtracker.com}
  spec.homepage      = "https://github.com/ZainW/pubg_rb"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10.4"
end
