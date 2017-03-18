$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hyper_iterator/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hyper_iterator-rails"
  s.version     = HyperIterator::Rails::VERSION
  s.authors     = ["Edmund Li"]
  s.email       = ["edmund.xz.lee@gmail.com"]
  s.summary     = "Adapter for hyper_iterator for Rails"
  s.homepage    = "https://github.com/EdmundLeex/hyper_iterator-rails"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_runtime_dependency 'hyper_iterator', '~> 0.3', '>= 0.3.0'

  s.add_runtime_dependency 'rails', '~> 4.0', '>= 4.0.5'

  s.add_development_dependency "sqlite3"
end
