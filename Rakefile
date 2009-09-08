require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'

Hoe.plugin :newgem

# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.spec 'libsvm-ruby-swig' do
  self.developer 'Tom Zeng', 'tom.z.zeng@gmail.com'
  # self.post_install_message = 'PostInstall.txt' # TODO remove if post-install message not required
  self.rubyforge_name       = nil # TODO this is default value
  # self.extra_deps         = [['activesupport','>= 2.0.2']]
  self.version = '0.3.3'
  self.url = 'http://www.tomzconsulting.com'
  self.description = 'Ruby wrapper of LIBSVM using SWIG'
  
end


task :default => ["sync_files","make_gem"] 

task :make_gem do
  Dir.chdir "ext" do
    ruby "extconf.rb"
    sh "make"
  end
end

task :sync_files do
  cp "libsvm-2.89/svm.h","ext/"
  cp "libsvm-2.89/svm.cpp","ext/"
  cp "libsvm-2.89/ruby/libsvm_wrap.cxx","ext/"
  cp "libsvm-2.89/ruby/svm.rb","lib/"
end

task :test do
  puts "done"
end
