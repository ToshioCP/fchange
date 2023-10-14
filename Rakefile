# This "Rakefile" does two things.
# - Type 'rake rdoc' to create HTML documents (default).
# - Type 'rake test' for the test.

require "rdoc/task"
require "rake/testtask"

task default: :rdoc

# RDoc::Task creates the following tasks.
# [rdoc] Generate RDoc files
# [clobber_rdoc] Delete all the rdoc files.
# [rerdoc] Rebuild the rdoc files from scratch, even if they are not out of date.
#
# See {Rdoc document}[https://ruby.github.io/rdoc/RDoc/Task.html] for further information.
RDoc::Task.new do |rdoc|
  rdoc.main = "README.md"
  rdoc.title = "Fchange"
  rdoc.rdoc_dir = "docs"
  rdoc.rdoc_files.include("README.md", "License.md", "lib/fchange/*.rb")
end
task :rdoc do
  touch "docs/.nojekyll"
end

Rake::TestTask.new do |t|
  t.test_files = Dir.glob("test/test_*")
  t.verbose = true
end
