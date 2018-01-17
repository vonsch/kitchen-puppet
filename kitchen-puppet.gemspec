# encoding: utf-8

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'kitchen-puppet/version'

Gem::Specification.new do |s|
  s.name          = 'kitchen-puppet'
  s.license       = 'Apache-2.0'
  s.version       = Kitchen::Puppet::VERSION
  s.authors       = ['Neill Turner']
  s.email         = ['neillwturner@gmail.com']
  s.homepage      = 'https://github.com/neillturner/kitchen-puppet'
  s.summary       = 'puppet provisioner for test-kitchen'
  candidates = Dir.glob('{lib}/**/*') + ['README.md', 'provisioner_options.md', 'kitchen-puppet.gemspec']
  s.files = candidates.sort
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubyforge_project = '[none]'
  s.required_ruby_version = '>= 2.1'
  s.add_dependency 'net-ssh', '~> 2.9'
  s.add_dependency 'test-kitchen', '~> 1.4'
  s.description = <<-TEXT
  == DESCRIPTION:

  Puppet Provisioner for Test Kitchen

  == FEATURES:

  Supports puppet apply, puppet agent, puppet bolt, hiera, hiera-eyaml, hiera-eyaml-gpg, custom facts, librarian-puppet, puppet collections

TEXT
end
