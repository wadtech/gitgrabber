# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_grabber/version'

Gem::Specification.new do |spec|
  spec.name          = "git-grabber"
  spec.version       = GitGrabber::VERSION
  spec.authors       = ["Peter Mellett"]
  spec.email         = ["pjm@petermellett.co.uk"]
  spec.summary       = "Simple application to back up github repositories"
  spec.homepage      = "http://www.github.com/wadtech/gitgrabber"
  spec.license       = "MIT"

  spec.files         = %w(LICENSE.txt README.md Rakefile git_grabber.gemspec)
  spec.files        += Dir.glob("lib/**/*.rb")
  spec.files        += Dir.glob("bin/**/*")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency "octokit"
end
