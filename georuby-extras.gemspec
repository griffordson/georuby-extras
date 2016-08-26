Gem::Specification.new do |s|
  s.name     = "griffordson-georuby-extras"
  s.version  = '0.9.0'
  s.date     = "2016-08-26"
  s.summary  = "Native extensions and extra functions for the GeoRuby library."
  s.email    = "matt@griffith.com"
  s.homepage = "http://github.com/griffordson/georuby-extras"
  s.description = "Provides native implementations of Vincenty ellipsoidal functions and a native implementation of a ray casting algorithm to detect if a point is contained in a polygon."
  s.has_rdoc = true
  s.authors  = ["David Troy", "Matt Griffith"]
  s.files    = ["ext/extconf.rb", 
		"ext/vincenty.c",
		"lib/georuby-extras.rb",
		"ext/pnpoly.c",
		"ext/pnpoly.h"]
  s.test_files = ["test/test_vincenty.rb", "test/test_pnpoly.rb"]
  s.rdoc_options = ["--main", "README"]
  s.extensions << 'ext/extconf.rb'
  s.extra_rdoc_files = ["Manifest.txt", "README", "History.txt"]
  s.add_dependency("georuby", ["= 1.9.7"])
end
