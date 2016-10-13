Gem::Specification.new do |s|
  s.name           = 'prime_multiplication_table'
  s.version        = '0.0.1'
  s.date           = '2016-10-11'
  s.summary        = "Prime Multiplication Table"
  s.description    = "Prints a multiplication table of first n prime numbers"
  s.authors        = ["Michael Revell"]
  s.email          = 'mikearevell@gmail.com'
  s.files          = ["lib/prime_multiplication_table.rb"]
  s.files          = ["Rakefile", "Gemfile", "lib/prime_multiplication_table.rb",
                      "bin/prime_multiplication_table"]
  s.executables   <<  "prime_multiplication_table"
  s.test_files     = ["test/prime_multiplication_table.rb"]
  s.homepage       = 'https://github.com:MichaelRevell/prime_multiplication_table.git'                 
  s.license        = 'MIT'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'minitest'
  s.add_runtime_dependency 'terminal-table'
  s.require_paths = ['lib']
end
