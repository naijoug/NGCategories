
Pod::Spec.new do |s|

  s.name         = "NGCategories"
  s.version      = "0.0.2"
  s.summary      = "Some useful iOS categories."
  s.description  = <<-DESC
  		   Some useful iOS categories!!!
                   DESC
  s.homepage     = "https://github.com/naijoug/NGCategories"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "naijoug" => "naijoug@126.com" }
  
  s.platform     = :ios, "7.0"
  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/naijoug/NGCategories.git", :tag => "#{s.version}" }

  s.public_header_files = "NGCategories/NGCategories.h"
  s.source_files  = "NGCategories/NGCategories.h"

  s.subspec "Foundation" do |ss|
    ss.source_files = "NGCategories/Foundation/**/*"
    ss.public_header_files = "NGCategories/Foundation/**/*.h"
  end

  s.subspec "UIkit" do |ss|
    ss.source_files = "NGCategories/UIkit/**/*"
    ss.public_header_files = "NGCategories/UIKit/**/*.h"
  end

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


 s.frameworks  = "Foundation", "UIKit"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

 s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
