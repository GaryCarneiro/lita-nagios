Gem::Specification.new do |spec|
  spec.name          = "lita-nagios"
  spec.version       = "0.1.3"
  spec.authors       = ["Jonathan Amiez"]
  spec.email         = ["jonathan.amiez@gmail.com"]
  spec.description   = "Nagios interaction with Lita"
  spec.summary       = "Receive notification and send ACK/recheck, etc. to Nagios"
  spec.homepage      = "https://github.com/josqu4red/lita-nagios"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", "~> 4.0"
  spec.add_runtime_dependency "lita-keyword-arguments"
  spec.add_runtime_dependency "nagiosharder", ">= 0.5.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_development_dependency "rspec", ">= 3.0.0.beta2"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
