$:.push File.expand_path('../lib', __FILE__)

require 'treat/version'

Gem::Specification.new do |s|
  
  s.name        = 'treat'
  s.version     = Treat::VERSION
  s.authors     = ['Louis Mullie']
  s.email       = ['louis.mullie@gmail.com']
  s.homepage    = 'https://github.com/louismullie/treat'
  s.summary     = %q{ Text Retrieval, Extraction and Annotation Toolkit. }
  s.description = %q{ Treat is a natural language processing framework for Ruby. }
  
  # Add all files.
  s.files = 
  Dir['bin/**/*'] + 
  Dir['lib/**/*'] + 
  Dir['spec/**/*'] +
  Dir['models/**/*'] +  
  Dir['tmp/**/*'] + 
  Dir['files/**/*'] +
  ['README.md', 'LICENSE']

  if RUBY_PLATFORM =~ /java/
    s.platform = 'java'
    s.add_runtime_dependency 'bson'
    # ferret
  else
    s.platform = Gem::Platform::RUBY
    s.add_runtime_dependency 'bson_ext'
    s.add_runtime_dependency 'ferret'
    s.add_runtime_dependency 'lda-ruby'
    s.add_runtime_dependency 'levenshtein-ffi'
    s.add_runtime_dependency 'narray'
    s.add_runtime_dependency 'rb-libsvm'
    s.add_runtime_dependency 'ruby-fann'

    s.add_development_dependency 'pry'
    s.add_development_dependency 'pry-debugger' # debugger-linecache not compatable with java
  end
  # Runtime dependencies
  s.add_runtime_dependency 'schiphol'
  s.add_runtime_dependency 'birch'
  s.add_runtime_dependency 'nokogiri'
  s.add_runtime_dependency 'mongo'
  s.add_runtime_dependency 'stanford-core-nlp'
  s.add_runtime_dependency 'linguistics'
  s.add_runtime_dependency 'ruby-readability'
  s.add_runtime_dependency 'whatlanguage'
  s.add_runtime_dependency 'chronic'
  s.add_runtime_dependency 'kronic'
  s.add_runtime_dependency 'nickel'
  s.add_runtime_dependency 'decisiontree'
  s.add_runtime_dependency 'zip'
  s.add_runtime_dependency 'loggability'
  s.add_runtime_dependency 'tf-idf-similarity'
  s.add_runtime_dependency 'fastimage'
  s.add_runtime_dependency 'fuzzy-string-match'

  # Development dependencies
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'simplecov'
  
  # Post-install message
  s.post_install_message = %q{Thanks for installing Treat.
  To complete the installation, run `require treat` in an IRB 
  terminal, followed by `Treat::Core::Installer.install`. }

end