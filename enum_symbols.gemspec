$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enum_to_sym/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enum_to_sym"
  s.version     = EnumToSym::VERSION
  s.authors     = ["Sean Devine"]
  s.email       = ["barelyknown@icloud.com"]
  s.homepage    = "http://github.com/barelyknown/enum_to_sym"
  s.summary     = "Changes the return value of enums to symbols."
  s.description = "Changes the return value of enums to symbols."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", ">= 4.1.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "minitest"
  s.add_development_dependency "rspec-rails"
end
