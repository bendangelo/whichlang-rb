# require "tomlrb"

Gem::Specification.new do |spec|
  spec.name          = "whichlang"
  # spec.version       = Tomlrb.load_file("Cargo.toml")["package"]["version"]
  spec.version       = "0.1.5"
  spec.license       = "Ruby"
  spec.authors       = ["Ben D'Angelo", "Kitaiti Makoto"]
  spec.email         = ["ben@bendangelo.me", "KitaitiMakoto@gmail.com"]

  spec.summary       = "Fast natural language detection library."
  spec.description   = "Ruby bindings for Whichlang, a natural language detection for Rust."
  spec.homepage      = "https://github.com/bendangelo/whichlang-rb"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bendangelo/whichlang-rb"
  spec.metadata["changelog_uri"] = "https://github.com/bendangelo/whichlang-rb/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0")
  end
  spec.extensions = ["ext/Rakefile"]

  spec.add_runtime_dependency "rutie"
  spec.add_runtime_dependency "fast_blank"

  spec.add_development_dependency "tomlrb"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "rubygems-tasks"
end
