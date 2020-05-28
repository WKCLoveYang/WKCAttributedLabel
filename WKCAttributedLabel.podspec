Pod::Spec.new do |s|
s.name         = "WKCAttributedLabel"
s.version      = "1.2.0"
s.summary      = "attributed label or textView"
s.homepage     = "https://github.com/WKCLoveYang/WKCAttributedLabel.git"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "WKCLoveYang" => "wkcloveyang@gmail.com" }
s.platform     = :ios, "10.0"
s.source       = { :git => "https://github.com/WKCLoveYang/WKCAttributedLabel.git", :tag => "1.2.0" }
s.source_files  = "WKCAttributedLabel/**/*.{h,m}"
s.public_header_files = "WKCAttributedLabel/**/*.h"
s.frameworks = "Foundation", "UIKit"
s.requires_arc = true

end
