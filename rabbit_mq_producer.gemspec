# frozen_string_literal: true

require_relative 'lib/rabbit_mq_producer/version'

Gem::Specification.new do |spec|
  spec.name          = 'rabbit_mq_producer'
  spec.version       = RabbitMQProducer::VERSION
  spec.authors       = ['Pavel Sidorenko']
  spec.email         = ['pavel.sid999@gmail.com']

  spec.summary       = 'Ruby gem for producing RabbitMQ messages'
  spec.description   = 'This gem is used for producing RabbitMQ messages. It represents a wrapper over bunny gem'
  spec.homepage      = 'https://github.com/Solar-A/rabbit_mq_producer'
  spec.required_ruby_version = '>= 2.5'

  # spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'activesupport'
  spec.add_dependency 'bunny'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
