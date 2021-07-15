# frozen_string_literal: true

require_relative "lib/jekyll-export/version"

Gem::Specification.new do |spec|
  spec.name        = "jekyll-export"
  spec.summary     = "Automatically generate an export.yaml for your Jekyll site."
  spec.version     = Jekyll::Export::VERSION
  spec.authors     = ["GitHub, Inc.", "Max Kaye"]
  # spec.email       = ""
  spec.homepage    = "https://github.com/xertrov/jekyll-export"
  spec.licenses    = ["MIT"]

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r!^bin/!) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r!^(test|spec|features)/!)
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.4.0"

  spec.add_dependency "jekyll", ">= 3.7", "< 5.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop-jekyll", "~> 0.4"
end
