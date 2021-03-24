
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "stub_protected_environments/version"

Gem::Specification.new do |spec|
  spec.name          = "stub_protected_environments"
  spec.version       = StubProtectedEnvironments::VERSION
  spec.authors       = ["Vanboom"]
  spec.email         = ["dvboom@hotmail.com"]

  spec.summary       = %q{Stub the db:check_protected_environments rake task introduced in Rails 5}
  spec.homepage      = "https://github.com/vanboom/stub_protected_environments"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rails", "> 5.1"
end
