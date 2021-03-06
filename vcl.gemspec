# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vcl/version'

Gem::Specification.new do |spec|
  spec.name          = "vcl"
  spec.version       = VCL::VERSION
  spec.authors       = ["Stephen Basile"]
  spec.email         = ["stephen@fastly.com"]

  spec.summary       = %q{CLI tool for interacting with the Fastly API}
  spec.description   = %q{This gem provides a better way to manage configurations.}
  spec.homepage      = "http://www.fastly.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://www.fastly.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables << "vcl"
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "bundler", "~> 1.10"
  spec.add_runtime_dependency "typhoeus", "~> 1.1.0"
  spec.add_runtime_dependency "thor", "~> 0.19.4"
  spec.add_runtime_dependency 'diffy', '~> 3.0', '>= 3.0.7'
  spec.add_runtime_dependency 'launchy', '~> 2.4.3', '>= 2.4.3'
end
