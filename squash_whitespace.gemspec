$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "squash_whitespace/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "squash_whitespace"
  s.version     = SquashWhitespace::VERSION
  s.authors     = ["ta"]
  s.email       = ["ioiioioloo@gmail.com"]
  s.homepage    = "https://github.com/tatat/squash_whitespace"
  s.summary     = "Remove whitespace between html tags."
  s.description = "Remove whitespace between html tags."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"

  s.add_development_dependency "sqlite3"
end
