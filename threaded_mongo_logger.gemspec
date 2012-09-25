Gem::Specification.new do |s|
  s.name = "threaded_mongo_logger"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Viacheslav Molokov"]
  s.date = "2012-08-20"
  s.description = "Thread Safe Logger for 10gen MongoDB"
  s.email = "viacheslav.molokov@gmail.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".ruby-version",
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "VERSION",
    "lib/*"
  ]
  #s.homepage = "https://github.com/imomoisoft/rspec-nokogiri"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Thread safe logger implementation for MongoDB"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
#      s.add_runtime_dependency(%q<jeweler>, [">= 0"])
    else
#      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
#    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end
