# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "delayed_job_admin/version"

Gem::Specification.new do |s|
  s.name        = "delayed_job_admin"
  s.version     = DelayedJobAdmin::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Trevor Turk"]
  s.email       = ["trevorturk@gmail.com"]
  s.homepage    = "https://github.com/trevorturk/delayed_job_admin"
  s.summary     = %q{Simple admin interface for the Delayed::Job gem}
  s.description = %q{Simple admin interface for the Delayed::Job gem...}

  s.rubyforge_project = "delayed_job_admin"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("rails")
  s.add_dependency("delayed_job")

  s.add_development_dependency "rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "sqlite3-ruby"
  s.add_development_dependency "delayed_job"
  s.add_development_dependency "launchy"
end
