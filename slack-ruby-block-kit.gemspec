# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slack-ruby-block-kit'

Gem::Specification.new do |spec|
  spec.name          = 'slack-ruby-block-kit'
  spec.version       = Slack::BlockKit::VERSION
  spec.authors       = ['Christian Gregg']
  spec.email         = ['c_arlt@hotmail.com']
  spec.summary       = "A ruby wrapper for Slack's Block Kit"
  spec.homepage      = 'https://github.com/CGA1123/slack-ruby-block-kit'
  spec.license       = 'MIT'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.5'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'faraday'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
end
