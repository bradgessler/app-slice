require 'rake'
require 'rubygems'
require 'spec/rake/spectask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "domain_slice"
    s.summary = %Q{Domain slice is a way to partition a rails application into various domains. This was built for a project where we needed to build private label websites for on of our rails applicaations.}
    s.email = "brad@conden.se"
    s.homepage = "http://github.com/bradgessler/domain-slice"
    s.description = "Partition rails apps"
    s.authors = ["Brad Gessler"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

desc "Run specs"
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_files = FileList['spec/specs/*.rb', 'spec/specs/format/*.rb']
  t.spec_opts = ['--colour', '--format', 'specdoc']
end