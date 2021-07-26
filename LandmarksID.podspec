Pod::Spec.new do |s|
  s.name = "LandmarksID"
  s.version = "2.5.1"
  s.summary = "LANDMARKS ID is a real world insights platform that helps brands learn more about their customers, locations and competitors"
  s.description = "LANDMARKS ID is a real world insights platform that helps brands learn more about their customers, locations and competitors"
  s.homepage = "https://www.landmarksid.com"
  s.license = {
    :type => 'Copyright',
    :text => <<-LICENSE
    LANDMARKS ID iOS SDK
    Copyright © 2020 LANDMARKS ID. All rights reserved.
    By downloading or using the LANDMARKS ID SDK for iOS, You agree to the LANDMARKS ID Terms and Conditions
    https://www.landmarksid.com/about.html
    and acknowledge that such terms govern your use of and access to the iOS SDK.
    LICENSE
  }
  s.author = { "LANDMARKSID" => "https://www.landmarksid.com" }
  s.platform = :ios
  s.source = { :git => 'https://github.com/LANDMARKSID/LandmarksID-iOS.git', :tag => s.version }
  s.requires_arc = true
  s.ios.deployment_target = '10.0'
  s.documentation_url = 'https://docs.landmarksid.com/docs/overview.html'
  s.frameworks = 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'Foundation', 'AdSupport', 'UIKit'
  s.weak_framework = 'AppTrackingTransparency'
  s.default_subspec = 'LO'
  s.subspec 'LO' do |sp|
    sp.vendored_frameworks = 'LandmarksID-LO/LandmarksIDSDK.framework'
  end
  s.subspec 'LOD' do |sp|
    sp.dependency 'BluedotPointSDK', '~> 15.3'
    sp.vendored_frameworks = 'LandmarksID-LOD/LandmarksIDSDK.framework'
  end
end
