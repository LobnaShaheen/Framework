#
#  Be sure to run `pod spec lint LobnaFramework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "LobnaFramework"
  spec.version      = "1.0.0"
  spec.summary      = "LobnaFramework creation for pods."

  spec.description  = "This is a description for LobnaFramework creation"

  spec.homepage     = "https://github.com/LobnaShaheen/Framework"

  spec.license      = "MIT"

  spec.author       = { "Lobna Shaheen" => "lobna@waffarx.com" }
  
  spec.platform     = :ios, "10.0"
  
  spec.swift_versions = "4.0"

  spec.source       = { :git => "https://github.com/LobnaShaheen/Framework.git", :tag => "1.0.0" }

  spec.source_files  = "LobnaFramework", "LobnaFramework/**/**.{h,m,swift}"

end
