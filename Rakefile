require 'rake'
require 'rubygems'
require 'spec/rake/spectask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "app-slice"
    s.summary = %Q{App slice is a way to partition a rails application into various apps. This was built for a project where we needed to build private label websites for one of our rails applications.}
    s.email = "brad@conden.se"
    s.homepage = "http://github.com/bradgessler/app-slice"
    s.description = "Partition rails apps by apps"
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
