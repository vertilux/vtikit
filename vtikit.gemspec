# frozen_string_literal: true

require_relative "lib/vtikit/version"

Gem::Specification.new do |spec|
  spec.name          = "vtikit"
  spec.version       = Vtikit::VERSION
  spec.authors       = ["Jose Perez"]
  spec.email         = ["jose.perez@vertilux.com"]

  spec.summary       = "Official Ruby library for Vertilux's API"
  spec.description   = "Official Ruby library for Vertilux's API"
  spec.homepage      = "https://vertilux.github.io/vtikit"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/vertilux/vtikit"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "faraday", "~> 0.9"
  spec.add_dependency "faraday_middleware", "~> 0.14.0"
end
