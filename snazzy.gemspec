# frozen_string_literal: true

require_relative "lib/snazzy/version"

Gem::Specification.new do |s|
  s.name = "snazzy"
  s.version = Snazzy::VERSION
  s.authors = ["Dan Brown"]
  s.email = ["dbrown@occameducation.com"]

  s.summary = %q{A collection of snazzy UI components for Rails applications.}
  s.description = %q{Snazzy provides a suite of stylish, reusable UI components for Ruby on Rails applications that leverage GitHub's ViewComponents, TailwindCSS and Rails.}
  s.homepage = "https://github.com/lordofthedanse/snazzy"
  s.license = "MIT"

  s.metadata = {
    "homepage_uri"    => s.homepage,
    "source_code_uri" => s.homepage,
    "bug_tracker_uri" => "https://github.com/lordofthedanse/snazzy/issues",
    "changelog_uri"   => "https://github.com/lordofthedanse/snazzy/blob/main/CHANGELOG.md"
  }

  s.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  s.bindir = "exe"
  s.executables = s.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 3.2"
  s.add_dependency "rails", ">= 7.1"
  s.add_dependency "slim", ">= 7.1"
  s.add_dependency "view_component", ">= 3.10.0"
end
