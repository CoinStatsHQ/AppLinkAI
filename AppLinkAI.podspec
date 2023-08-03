Pod::Spec.new do |s|
  s.name             = 'AppLinkAI'
  s.swift_version    = '5.5'
  s.version          = '1.0.0'
  s.summary          = 'An easy-to-use library for implementing deeplinking and deferred deeplinking in iOS apps.'
  s.description      = <<-DESC
AppLinkAI is a powerful library that simplifies the process of implementing deeplinks
and deferred deeplinks in iOS applications. It provides a clean and intuitive API to handle 
incoming deeplinks and route them to the appropriate parts of your app.
                       DESC

  s.homepage         = 'https://github.com/CoinStatsHQ/AppLinkAI'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'arturdev' => 'mkrtarturdev@gmail.com' }
  s.source           = { :git => 'https://github.com/CoinStatsHQ/AppLinkAI.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.vendored_frameworks = 'AppLinkAI.xcframework'	
end
