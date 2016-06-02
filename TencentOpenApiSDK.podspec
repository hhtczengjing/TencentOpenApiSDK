Pod::Spec.new do |s|
  s.name                = "TencentOpenApiSDK"
  s.version             = "3.1.0.1"
  s.summary             = "The Official iOS SDK of Tencent Open API."
  s.homepage            = "http://wiki.open.qq.com"
  s.license             = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (c) 2016 Tencent. All rights reserved.
      LICENSE
  }
  s.author              = { "OpenQQ" => "opensupport@qq.com" }
  s.platform            = :ios
  s.requires_arc        = true

  s.source              = { :git=> "https://github.com/candyan/TencentOpenApiSDK.git", :tag => "#{s.version}" }
  s.xcconfig            = { "FRAMEWORK_SEARCH_PATHS" => "$(inherited)" }

  s.libraries      = 'iconv', 'z', 'c++', 'sqlite3'
  s.frameworks     = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony'

  s.default_subspec = 'Full'

  s.subspec "Full" do |full|
    full.vendored_frameworks = 'full/TencentOpenAPI.framework'
    full.resource_bundles    = {
      'TencentOpenAPI' => ['full/TencentOpenApi_IOS_Bundle.bundle']
    }
  end

  s.subspec "Lite" do |lite|
    lite.vendored_frameworks = 'lite/TencentOpenAPI.framework'
  end

end