Pod::Spec.new do |s|
  s.name = "LandmarksID"
  s.version = "2.3.2"
  s.summary = "LandmarksID helps brands and marketers learn more about their customers"
  s.description = "LANDMARKS ID is a mobile location intelligence platform that provides brands and marketers privacy compliant location data on their customers real world behaviours, brand affinities and purchase intents"
  s.homepage = "https://www.landmarksid.com"
  s.license = {
    :type => 'Copyright',
    :text => <<-LICENSE
    LandmarksID iOS SDK
    Copyright © 2020 LandmarksID. All rights reserved.
    By downloading or using the LandmarksID SDK for iOS, You agree to the LandmarksID Terms and Conditions
    https://www.landmarksid.com/about.html
    and acknowledge that such terms govern your use of and access to the iOS SDK.
    LICENSE
  }
  s.author = { "LandmarksID" => "https://www.landmarksid.com" }
  s.source = { :git => 'https://github.com/LANDMARKSID/LandmarksID-iOS.git', :tag => s.version.to_s }
  s.platform = :ios
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  s.requires_arc = true
  s.documentation_url = 'https://docs.landmarksid.com/docs/overview.html'
  s.frameworks = 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'Foundation', 'AdSupport', 'AppTrackingTransparency', 'UIKit'
  s.weak_framework = 'Foundation'
  s.vendored_frameworks = 'LandmarksID-LO/LandmarksIDSDK.framework'
end