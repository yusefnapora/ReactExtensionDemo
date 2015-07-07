# Uncomment this line to define a global platform for your project
platform :ios, '8.0'
use_frameworks!

def react
  opts = {git: 'https://github.com/yusefnapora/react-native', branch: 'extension-safe-api'}
	pod 'React', opts
	pod 'React/ART', opts
	pod 'React/RCTActionSheet', opts
	pod 'React/RCTAdSupport', opts
	pod 'React/RCTAnimationExperimental', opts
	pod 'React/RCTGeolocation', opts
	pod 'React/RCTImage', opts
	pod 'React/RCTNetwork', opts 
	pod 'React/RCTPushNotification', opts
	pod 'React/RCTSettings', opts
	pod 'React/RCTText', opts
	pod 'React/RCTVibration', opts
	pod 'React/RCTWebSocket', opts
end

def snapkit
	pod 'SnapKit', '~> 0.12.0'
end

link_with 'ReactDynamic', 'SharedFramework', 'ShareExtension'

react
snapkit