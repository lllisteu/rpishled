require_relative 'lib/rpishled/version'

Gem::Specification.new do |s|

  s.name     = 'rpishled'
  s.summary  = 'A Ruby library for the Raspberry Pi Sense HAT LED matrix'
  s.version  = Rpishled::VERSION

  s.homepage = 'https://github.com/lllisteu/rpishled'
  s.authors  = [ 'lllist.eu' ]
  s.license  = 'MIT'

  all_files     = `git ls-files -z`.split("\x0")
  s.files       = all_files.grep(%r{^(bin|lib)/})
  s.executables = all_files.grep(%r{^bin/.+}) { |f| File.basename(f) }

  s.required_ruby_version = '>=2.2.0'

  s.metadata = {
    'homepage_uri'      => 'https://github.com/lllisteu/rpishled',
    'changelog_uri'     => 'https://github.com/lllisteu/rpishled/blob/master/History.md',
    'documentation_uri' => 'https://www.rubydoc.info/gems/rpishled',
  }

end
