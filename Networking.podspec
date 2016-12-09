Pod::Spec.new do |s|

  s.name         = "Networking"
  s.version      = "0.0.1"
  s.summary      = "An opinionated implementation of Networking stack for iOS on RxMoya"

  s.homepage     = "https://github.com/AndrewSB/Networking"

  s.license      = "MIT"

  s.author             = { "Andrew Breckenridge" => "asbreckenridge@me.com" }
  s.social_media_url   = "http://twitter.com/Andrew_Breck"

  s.platform     = :ios
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/AndrewSB/Networking.git", :commit => "f050d33e9e8755a7116668b0e11668c5e7067543" }

  s.source_files  = "Source/"
  s.exclude_files = "Demo/", "Tests/", "Carthage/", "Pods/"

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
