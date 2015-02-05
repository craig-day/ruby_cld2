Gem::Specification.new do |gem|
  gem.version     = '0.0.2'
  gem.name        = 'ruby_cld2'
  gem.files       = Dir['{lib}/**/*', '{ext/cld2/lib}/*'] + %w(README.md)
  gem.summary     = 'Compact Language Detection'
  gem.description = "Ruby wrapper for Google's Compact Language Detection"
  gem.email       = 'cday@zendesk.com'
  gem.homepage    = 'https://github.com/craig-day/cld2'
  gem.authors     = ["Craig Day"]
  gem.license     = "MIT"

  gem.add_runtime_dependency 'ffi', '~> 1.9'
end
