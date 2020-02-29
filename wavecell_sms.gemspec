lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wavecell_sms/version"

Gem::Specification.new do |spec|
  spec.name          = "wavecell_sms"
  spec.version       = WavecellSms::VERSION
  spec.authors       = ["Arman Gian Argamosa"]
  spec.email         = ["argamosa.gian@gmail.com"]

  spec.summary       = "API integration for processing bulk SMS with wavecell."
  spec.description   = "Process your SMS notifications using Wavecell API"
  spec.homepage      = "https://github.com/gianargamosa/wavecell_sms"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "httparty"
  # spec.add_development_dependency "pry", "~> 1.0"
end
