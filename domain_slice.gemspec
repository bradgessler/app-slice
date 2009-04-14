# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{domain_slice}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brad Gessler"]
  s.date = %q{2009-04-13}
  s.description = %q{Partition rails apps by domains}
  s.email = %q{brad@conden.se}
  s.files = ["VERSION.yml", "lib/domain_slice", "lib/domain_slice/middleware", "lib/domain_slice/middleware/static.rb", "lib/domain_slice/middleware.rb", "lib/domain_slice/rails", "lib/domain_slice/rails/initializer.rb", "lib/domain_slice/rails.rb", "lib/domain_slice.rb", "spec/fixtures", "spec/spec_helper.rb", "spec/specs", "spec/specs/domain_slice_spec.rb", "spec/specs/middleware_spec.rb", "spec/specs/rails_spec.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/bradgessler/domain-slice}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Domain slice is a way to partition a rails application into various domains. This was built for a project where we needed to build private label websites for one of our rails applications.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
