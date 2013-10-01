#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib/appfigures_api'
  t.test_files = FileList['test/lib/appfigures_api/**/*_test.rb']
  # t.verbose = true
end
 
task :default => :test