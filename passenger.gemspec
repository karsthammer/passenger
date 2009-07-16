Gem::Specification.new do |s|
  s.homepage = "http://www.modrails.com/"
  s.summary = "Apache module for Ruby on Rails support."
  s.name = "passenger"
  s.version = "2.2.4"
  s.rubyforge_project = "passenger"
  s.author = "Phusion - http://www.phusion.nl/"
  s.email = "info@phusion.nl"
  s.requirements << "fastthread" << "Apache 2 with development headers"
  s.require_paths = ["lib", "ext"]
  s.add_dependency 'fastthread', '>= 1.0.1'
  s.extensions << 'ext/phusion_passenger/extconf.rb'
  s.executables = [
    'passenger-spawn-server',
    'passenger-install-apache2-module',
    'passenger-install-nginx-module',
    'passenger-config',
    'passenger-memory-stats',
    'passenger-make-enterprisey',
    'passenger-status',
    'passenger-stress-test'
  ]
  s.has_rdoc = true
  s.extra_rdoc_files = ['README']
  s.rdoc_options <<
    "-S" << "-N" << "-p" << "-H" <<
    '--main' << 'README' <<
    '--title' << 'Passenger Ruby API'
  s.description = "Passenger is an Apache module for Ruby on Rails support."
end