# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'db-entropy'

Gem::Specification.new do |s|
  s.name        = 'db-entropy'
  s.version     = DbEntropy::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jay Zeschin"]
  s.email       = ["jay.zeschin@factorylabs.com"]
  s.homepage    = 'http://github.com/jayzes/db-entropy'
  s.summary     = 'A quick and dirty way to generate random database configurations in Rails for testing.  Works for MySQL and Mongoid.'
  s.description = %q{A quick and dirty way to generate random DB configs in Rails}
  s.date        = %q{2010-10-25}
      
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_path = 'lib'
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(README.rdoc)
  s.post_install_message = %q{PostInstall.txt}

end
