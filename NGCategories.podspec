
Pod::Spec.new do |s|

  s.name                = "NGCategories"
  s.version             = "0.0.7"
  s.summary             = "Some useful iOS categories."
  s.description         = <<-DESC
      Some useful iOS categories!
                          DESC
  s.homepage            = "https://github.com/naijoug/NGCategories"
  s.license             = { :type => "MIT", :file => "LICENSE" }
  s.authors             = { "naijoug" => "naijoug@126.com" }
  
  s.platform            = :ios, "8.0"
  s.source              = { :git => "https://github.com/naijoug/NGCategories.git", :tag => "#{s.version}" }
  s.frameworks          = "Foundation", "UIKit"
  s.requires_arc        = true

  s.public_header_files = "NGCategories/NGCategories.h"
  s.source_files        = "NGCategories/NGCategories.h"

  s.subspec "Foundation" do |ss|
    ss.public_header_files     = "NGCategories/Foundation/NGFoundation.h"
    ss.source_files            = "NGCategories/Foundation/NGFoundation.h"

    ss.subspec "NSArray" do |sss|
      sss.public_header_files  = "NGCategories/Foundation/NSArray/*.h"
      sss.source_files         = "NGCategories/Foundation/NSArray/*.{h,m}"
    end  
    ss.subspec "NSBundle" do |sss|
      sss.public_header_files  = "NGCategories/Foundation/NSBundle/*.h"
      sss.source_files         = "NGCategories/Foundation/NSBundle/*.{h,m}"
    end
    ss.subspec "NSAttributedString" do |sss|
      sss.public_header_files  = "NGCategories/Foundation/NSAttributedString/*.h"
      sss.source_files         = "NGCategories/Foundation/NSAttributedString/*.{h,m}"
    end
    ss.subspec "NSDate" do |sss|
      sss.public_header_files  = "NGCategories/Foundation/NSDate/*.h"
      sss.source_files         = "NGCategories/Foundation/NSDate/*.{h,m}"
    end
    ss.subspec "NSObject" do |sss|
      sss.public_header_files  = "NGCategories/Foundation/NSObject/*.h"
      sss.source_files         = "NGCategories/Foundation/NSObject/*.{h,m}"
    end
    ss.subspec "NSString" do |sss|
      sss.public_header_files  = "NGCategories/Foundation/NSString/*.h"
      sss.source_files         = "NGCategories/Foundation/NSString/*.{h,m}"
    end
  end

  s.subspec "UIkit" do |ss|
    ss.public_header_files     = "NGCategories/UIKit/NGUIKit.h"
    ss.source_files            = "NGCategories/UIKit/NGUIKit.h"
    
    ss.subspec "UIBarButtonItem" do |sss|
      sss.public_header_files  = "NGCategories/UIKit/UIBarButtonItem/*.h"
      sss.source_files         = "NGCategories/UIKit/UIBarButtonItem/*.{h,m}"
    end
    ss.subspec "UIColor" do |sss|
      sss.public_header_files  = "NGCategories/UIKit/UIColor/*.h"
      sss.source_files         = "NGCategories/UIKit/UIColor/*.{h,m}"
    end
    ss.subspec "UIImage" do |sss|
      sss.public_header_files  = "NGCategories/UIKit/UIImage/*.h"
      sss.source_files         = "NGCategories/UIKit/UIImage/*.{h,m}"
    end
    ss.subspec "UILabel" do |sss|
      sss.public_header_files  = "NGCategories/UIKit/UILabel/*.h"
      sss.source_files         = "NGCategories/UIKit/UILabel/*.{h,m}"
    end
    ss.subspec "UINavigationController" do |sss|
      sss.public_header_files  = "NGCategories/UIKit/UINavigationController/*.h"
      sss.source_files         = "NGCategories/UIKit/UINavigationController/*.{h,m}"
    end
    ss.subspec "UITextView" do |sss|
      sss.public_header_files  = "NGCategories/UIKit/UITextView/*.h"
      sss.source_files         = "NGCategories/UIKit/UITextView/*.{h,m}"
    end
    ss.subspec "UIScreen" do |sss|
      sss.public_header_files  = "NGCategories/UIKit/UIScreen/*.h"
      sss.source_files         = "NGCategories/UIKit/UIScreen/*.{h,m}"
    end
    ss.subspec "UIView" do |sss|
      sss.public_header_files  = "NGCategories/UIKit/UIView/*.h"
      sss.source_files         = "NGCategories/UIKit/UIView/*.{h,m}"
    end
  end

end
