# frozen_string_literal: true

require_relative 'lib/flame/raven_context/version'

Gem::Specification.new do |spec|
	spec.name        = 'flame-raven_context'
	spec.version     = Flame::RavenContext::VERSION
	spec.authors     = ['Alexander Popov']
	spec.email       = ['alex.wayfer@gmail.com']

	spec.summary     = 'Helper class for Sentry reports from Flame web applications'
	spec.description = <<~DESC
		Helper class for Sentry reports via `sentry-raven` gem from Flame web applications.
	DESC
	spec.license = 'MIT'

	source_code_uri = 'https://github.com/AlexWayfer/flame-raven_context'

	spec.homepage = source_code_uri

	spec.metadata['source_code_uri'] = source_code_uri

	spec.metadata['homepage_uri'] = spec.homepage

	spec.metadata['changelog_uri'] =
		'https://github.com/AlexWayfer/flame-raven_context/blob/master/CHANGELOG.md'

	spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

	spec.required_ruby_version = '>= 2.5'

	spec.add_runtime_dependency 'alt_memery', '~> 2.0'
	spec.add_runtime_dependency 'gorilla_patch', '~> 4.0'
	spec.add_runtime_dependency 'sentry-raven', '~> 3.0'

	spec.add_development_dependency 'pry-byebug', '~> 3.9'

	spec.add_development_dependency 'bundler', '~> 2.0'
	spec.add_development_dependency 'gem_toys', '~> 0.10.0'
	spec.add_development_dependency 'toys', '~> 0.12.0'

	spec.add_development_dependency 'codecov', '~> 0.6.0'
	spec.add_development_dependency 'rspec', '~> 3.9'
	spec.add_development_dependency 'simplecov', '~> 0.21.2'

	spec.add_development_dependency 'rubocop', '~> 1.2'
	spec.add_development_dependency 'rubocop-performance', '~> 1.0'
	spec.add_development_dependency 'rubocop-rspec', '~> 2.0'
end
