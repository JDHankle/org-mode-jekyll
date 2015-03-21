# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |spec|
  spec.name          = "org-mode-jekyll"
  spec.version       = '0.1.2'
  spec.authors       = ["Jared Hankle"]
  spec.email         = ["jdhankle@gmail.com"]
  spec.summary       = %q{Converter for .org files in Jekyll}
  spec.description   = %q{Converter for .org files in Jekyll}
  spec.homepage      = "https://jdhankle.github.io/org-mode-jekyll"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('org-ruby', "~> 0.9.1")

  spec.add_development_dependency('jekyll', "~> 2.5.3")
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
