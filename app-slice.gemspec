# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{app-slice}
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brad Gessler"]
  s.date = %q{2009-05-02}
  s.description = %q{Partition rails apps by apps}
  s.email = %q{brad@conden.se}
  s.files = ["VERSION.yml", "lib/app_slice", "lib/app_slice/middleware", "lib/app_slice/middleware/static.rb", "lib/app_slice/middleware.rb", "lib/app_slice/rails", "lib/app_slice/rails/initializer.rb", "lib/app_slice/rails.rb", "lib/app_slice.rb", "spec/fixtures", "spec/spec_helper.rb", "spec/specs", "spec/specs/app_slice_spec.rb", "spec/specs/middleware_spec.rb", "spec/specs/rails_spec.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/bradgessler/app-slice}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{App slice is a way to partition a rails application into various apps. This was built for a project where we needed to build private label websites for one of our rails applications.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
