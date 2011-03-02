# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{app-slice}
  s.version = "0.2.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brad Gessler"]
  s.date = %q{2011-03-01}
  s.description = %q{Partition rails apps by apps}
  s.email = %q{brad@conden.se}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    ".gitignore",
     "README.markdown",
     "Rakefile",
     "VERSION.yml",
     "app-slice.gemspec",
     "lib/app_slice.rb",
     "lib/app_slice/middleware.rb",
     "lib/app_slice/middleware/static.rb",
     "lib/app_slice/rails.rb",
     "lib/app_slice/rails/file.rb",
     "lib/app_slice/rails/initializer.rb",
     "lib/app_slice/rails/routes.rb",
     "spec/fixtures/.gitignore",
     "spec/spec_helper.rb",
     "spec/specs/app_slice_spec.rb",
     "spec/specs/middleware/static_spec.rb",
     "spec/specs/middleware_spec.rb",
     "spec/specs/rails_spec.rb"
  ]
  s.homepage = %q{http://github.com/bradgessler/app-slice}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{App slice is a way to partition a rails application into various apps. This was built for a project where we needed to build private label websites for one of our rails applications.}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/specs/app_slice_spec.rb",
     "spec/specs/middleware/static_spec.rb",
     "spec/specs/middleware_spec.rb",
     "spec/specs/rails_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

