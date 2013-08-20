name              "rails"
maintainer        "Ben Lindsey"
maintainer_email  "ben.lindsey@gmail.com"
license           "MIT"
description       "Sets up ruby and rails for development"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.1"
recipe            "rails", "Get'r done"

%w{ ubuntu debian }.each do |os|
  supports os
end
