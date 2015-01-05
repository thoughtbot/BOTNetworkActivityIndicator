Pod::Spec.new do |s|
  s.name             = "BOTNetworkActivityIndicator"
  s.version          = "0.1.0"
  s.summary          = "A thread-safe, network activity counter that manages UIKit's network activity indicator."
  s.description      = <<-DESC
BOTNetworkActivityIndicator is used to track a stack of in-flight network requests. When the number of outstanding network activities is greater than 0, the network activity indicator in the iOS status bar is displayed. When the count reaches 0, it disappears. If you were to show and hide the activity indicator separately in each request, the indicator would flash and reset every time it is shown which, frankly, is distracting. When new network activity starts, call -pushNetworkActivity on the shared instance. When the activity ends, call -popNetworkActivity.
                       DESC
  s.homepage         = "https://github.com/thoughtbot/BOTNetworkActivityIndicator"
  s.license          = 'MIT'
  s.author           = { "Mark Adams" => "mark@thoughtbot.com" }
  s.source           = { :git => "https://github.com/thoughtbot/BOTNetworkActivityIndicator.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/thoughtbot'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'BOTNetworkActivityIndicator' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
