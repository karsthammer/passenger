Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.homepage = "http://www.modrails.com/"
  s.summary = "Apache module for Ruby on Rails support."
  s.name = "passenger"
  s.version = "2.2.4"
  s.rubyforge_project = "passenger"
  s.author = "Phusion - http://www.phusion.nl/"
  s.email = "info@phusion.nl"
  s.requirements << "fastthread" << "Apache 2 with development headers"
  s.require_paths = ["lib", "ext"]
  s.add_dependency 'rake', '>= 0.8.1'
  s.add_dependency 'fastthread', '>= 1.0.1'
  s.extensions << 'ext/phusion_passenger/extconf.rb'
  s.files = FileList[
    'Rakefile',
    'README',
    'DEVELOPERS.TXT',
    'LICENSE',
    'INSTALL',
    'NEWS',
    'lib/**/*.rb',
    'lib/**/*.py',
    'lib/phusion_passenger/templates/*',
    'lib/phusion_passenger/templates/apache2/*',
    'lib/phusion_passenger/templates/nginx/*',
    'bin/*',
    'doc/*',
    
    # If you're running 'rake package' for the first time, then these
    # files don't exist yet, and so won't be matched by the above glob.
    # So we add these filenames manually.
    'doc/Users guide Apache.html',
    'doc/Users guide Nginx.html',
    'doc/Security of user switching support.html',
    
    'doc/*/*',
    'doc/*/*/*',
    'doc/*/*/*/*',
    'doc/*/*/*/*/*',
    'doc/*/*/*/*/*/*',
    'man/*',
    'debian/*',
    'ext/common/*.{cpp,c,h,hpp}',
    'ext/apache2/*.{cpp,h,c,TXT}',
    'ext/nginx/*.{c,cpp,h}',
    'ext/nginx/config',
    'ext/boost/*.{hpp,TXT}',
    'ext/boost/**/*.{hpp,cpp,pl,inl,ipp}',
    'ext/oxt/*.hpp',
    'ext/oxt/*.cpp',
    'ext/oxt/detail/*.hpp',
    'ext/phusion_passenger/*.{c,rb}',
    'benchmark/*.{cpp,rb}',
    'misc/*',
    'misc/*/*',
    'vendor/**/*',
    'test/*.{rb,cpp,example}',
    'test/support/*.{cpp,h,rb}',
    'test/oxt/*.cpp',
    'test/ruby/**/*',
    'test/integration_tests/**/*',
    'test/stub/**/*'
  ]
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