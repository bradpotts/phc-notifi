$:.push File.expand_path("lib", __dir__)
require "phcnotifi/version"

Gem::Specification.new do |phc_gem_spec|

  phc_gem_spec.name        = "phcnotifi"
  phc_gem_spec.version     = Phcnotifi::VERSION
  phc_gem_spec.authors     = ["BradPotts"]
  phc_gem_spec.email       = ["info@phcnetworks.net"]
  phc_gem_spec.homepage    = "https://phcnetworks.net/"
  phc_gem_spec.summary     = "Rails 5.2 Helper Engine"
  phc_gem_spec.description = "Rails engine with helpers for alerts and form validation notifications."
  phc_gem_spec.license     = "MIT"

  phc_gem_spec.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  phc_gem_spec.add_dependency "rails", "~> 5.2", ">= 5.2.0"

  # Admin Panel Theme Dependencies
  phc_gem_spec.add_dependency "phcadmin1", "~> 28.0"
  phc_gem_spec.add_dependency "phcadmin2", "~> 28.0"
  phc_gem_spec.add_dependency "phcadmin3", "~> 23.0"
  phc_gem_spec.add_dependency "phcadmin4", "~> 5.0"
  phc_gem_spec.add_dependency "phcadmin5", "~> 5.0"

  # Website Theme Dependencies
  phc_gem_spec.add_dependency "phctheme1", "~> 34.0"
  phc_gem_spec.add_dependency "phctheme2", "~> 23.0"
  phc_gem_spec.add_dependency 'phctheme3', "~> 4.0"

  # Development Dependencies
  phc_gem_spec.add_development_dependency "byebug", "~> 10.0"
  phc_gem_spec.add_development_dependency "capybara", "~> 3.4"
  phc_gem_spec.add_development_dependency "minitest", "~> 5.11"
  phc_gem_spec.add_development_dependency "rspec-rails", "~> 3.7"

  phc_gem_spec.add_development_dependency "factory_bot_rails", "~> 4.10"
  phc_gem_spec.add_development_dependency "faker", "~> 1.9"
  phc_gem_spec.add_development_dependency "launchy", "~> 2.4"

  phc_gem_spec.add_development_dependency "sqlite3", "~> 1.3"

end
