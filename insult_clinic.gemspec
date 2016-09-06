Gem::Specification.new do |s|
  s.name        = 'insult_clinic'
  s.version     = '0.1.1'
  s.date        = '2016-09-05'
  s.summary     = 'insult clinic'
  s.description = "Returns a random silly insult"
  s.authors     = ["Noah Milstein"]
  s.email       = 'noahamilstein@gmail.com'
  s.files       = ["lib/insult_clinic.rb"]
  s.executables << 'insult_clinic'
  s.homepage    =
    'https://github.com/mihaowei/insult_clinic'
  s.license       = 'MIT'
  s.add_development_dependency "bundler", "~> 1.12"
  s.add_development_dependency "rspec", "~> 3.4"
end
