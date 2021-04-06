Pod::Spec.new do |s|
    s.name                  = 'FancyScrollView'
    s.version               = '0.1.3'
    s.summary               = 'A SwiftUI ScrollView Designed to imitate the App Store and Apple Music ScrollViews'
    s.description           = <<-DESC
    A SwiftUI ScrollView Designed to imitate the App Store and Apple Music ScrollViews (with or without a Parallax Header)
    DESC
    s.homepage              = 'https://github.com/nerdsupremacist/FancyScrollView'
    s.license               = { :type => 'Copyright', :file => 'LICENSE' }
    s.author                = { 'Mathias Quintero' => 'me@quintero.io' }
    s.source                = { :git => 'https://github.com/nerdsupremacist/FancyScrollView.git', :tag => "#{s.version}" }
    s.platform              = :ios
    s.swift_version         = '5'
    s.ios.deployment_target = '13.0'
end
