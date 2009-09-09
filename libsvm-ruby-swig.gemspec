# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{libsvm-ruby-swig}
  s.version = "0.3.3.2009081423"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Zeng", "Mariano Lizarraga", "Galen O'Hanlon"]
  s.date = %q{2009-09-08}
  s.description = %q{Ruby wrapper of LIBSVM using SWIG}
  s.email = ["tom.z.zeng@gmail.com", "mariano.lizarraga@plastictrophy.com", "galen.ohanlon@plastictrophy.com"]
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "COPYING", "AUTHORS", "Manifest.txt", "README.rdoc", "Rakefile", "lib/svm.rb", "ext/libsvm_wrap.cxx", "ext/svm.cpp", "ext/svm.h", "ext/extconf.rb", "ext/Makefile"]
  s.homepage = %q{http://www.plastictrophy.com}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib", "ext"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Mac OS 10.5 and i386 only Ruby port of the LIBSVM Python SWIG (Simplified Wrapper and  Interface Generator) interface}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
