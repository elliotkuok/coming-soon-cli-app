
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "coming_soon/version"

Gem::Specification.new do |spec|
  spec.name          = "coming_soon"
  spec.version       = ComingSoon::VERSION
  spec.authors       = ["'Elliot Kuok'"]
  spec.email         = ["'elliotckuok@gmail.com'"]

  spec.summary       = %q{This CLI finds movies that are coming soon}
  spec.homepage      = "https://github.com/elliotkuok/coming-soon-cli-app"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/elliotkuok/coming-soon-cli-app"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
