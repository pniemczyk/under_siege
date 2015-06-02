# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'under_siege/version'

Gem::Specification.new do |spec|
  spec.name          = 'under_siege'
  spec.version       = UnderSiege::VERSION
  spec.authors       = ['Pawel Niemczyk']
  spec.email         = ['p.niemczyk@pilot.co']

  spec.summary       = 'Automation siege procedure on the website'
  spec.description   = 'Automation siege procedure on the website'
  spec.homepage      = 'https://github.com/pniemczyk/under_siege'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'guard', '~> 2.12'
  spec.add_development_dependency 'guard-rspec', '~> 4.5'
  spec.add_development_dependency 'guard-rubocop', '~> 1.2'
  spec.add_development_dependency 'coveralls', '~> 0.7'
  spec.add_runtime_dependency 'autosiege', '~> 0.0.2'
end
