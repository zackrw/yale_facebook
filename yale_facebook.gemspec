require File.expand_path('../lib/yale_facebook/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = "yale_facebook"
  gem.version = YaleFacebook::VERSION
  gem.authors = ["Zack Reneau-Wedeen", "HackYale/STC-Dev Rails Class"]
  gem.email = "z.reneau.wedeen@gmail.com"
  gem.homepage = "https://github.com/zackrw/yale_facebook"
  gem.license = "MIT"
  gem.summary = "The Yale Facebook gem exposes a programmatic API for interacting with Yale Facebook"
  gem.description = <<DESC
The Yale Facebook gem exposes a programmatic API for interacting with Yale Facebook.
DESC

  gem.files = Dir['lib/**/*.rb', 'spec/**/*.rb', 'README.md', 'LICENSE']
  gem.has_rdoc = false
  gem.add_dependency 'mechanize'
end
