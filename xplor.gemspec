require_relative 'lib/xplor/version'

Gem::Specification.new do |spec|
  spec.name          = "xplor"
  spec.version       = Xplor::VERSION
  spec.authors       = ["Thomas Almeida"]
  spec.email         = ["thomas.fa@gmail.com"]

  spec.summary       = %q{A library to explore mars by spacial vehicle}
  spec.description   = %q{A library to explore mars by spacial vehicle}
  spec.homepage      = "https://github.com/thomasalmeida/xplor-mars"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/thomasalmeida/xplor-mars"
  spec.metadata["changelog_uri"] = "https://github.com/thomasalmeida/xplor-mars"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = ["xplor"]
  spec.require_paths = ["lib"]
end
