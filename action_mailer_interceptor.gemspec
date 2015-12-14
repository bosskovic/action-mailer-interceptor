lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'action_mailer_interceptor/version'

Gem::Specification.new do |s|
  s.name = 'action_mailer_interceptor'
  s.version = ActionMailerInterceptor::VERSION.dup
  s.platform = Gem::Platform::RUBY
  s.date = '2015-12-14'
  s.summary = ' Intercepts and forwards emails to the given address in the specified environments.'
  s.description = ' Intercepts and forwards emails to the given address in the specified environments.'
  s.authors = ['Marko Bošković']
  s.email = 'marko@bosskovic@gmail.com'
  s.files = `git ls-files`.split("\n")
  s.test_files = []
  s.homepage = 'https://github.com/bosskovic/action_mailer_interceptor'
  s.license = 'MIT'

  s.add_runtime_dependency 'activesupport'
  s.add_development_dependency 'bundler'
end
