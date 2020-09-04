# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inspinia/rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'inspinia-rails'
  spec.version       = Inspinia::Rails::VERSION
  spec.authors       = ['Leonardo Falk']
  spec.email         = ['leonardo@wonder.com.br']

  spec.summary       = 'Rails assets for inspinia front end template'
  spec.description   = 'Rails assets for inspinia front end template'
  spec.homepage      = 'https://www.wonder.com.br'
  spec.license       = 'closed'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'bootstrap-sass', '~> 3.3.7'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
