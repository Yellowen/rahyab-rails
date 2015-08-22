# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rahyab_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rahyab_rails"
  s.version     = RahyabRails::VERSION
  s.authors     = ["Behnam Ahmad Khan Beigi", "Sameer Rahmany"]
  s.email       = ["yottanami@gnu.org", "lxsameer@gmail.com"]
  s.homepage    = "http://www.yellowen.ir"
  s.summary     = "Rails interface of Rahyab SMS Service"
  s.description = "Rails GEM to use Rahyab SMS Service"
  s.license     = "GPL-2"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "faalis"
  s.add_development_dependency "sqlite3"
end
