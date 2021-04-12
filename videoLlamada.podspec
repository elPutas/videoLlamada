
Pod::Spec.new do |s|
  s.name             = 'videoLlamada'
  s.version          = '0.1.0'
  s.summary          = 'zoom custom SDK for Colegium'
 
  s.description      = <<-DESC
Allow connect to a meeting
                       DESC
 
  s.homepage         = 'https://github.com/elPutas/videoLlamada'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gio Valdes' => 'gevaldes@colegium.com' }
  s.source           = { :git => 'https://github.com/elPutas/videoLlamada.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '0.1.0'
  
  s.source_files = "videoLlamada/**/*.{swift}"
  
  s.framework = "UIKit"

s.dependency 'SDWebImage'
s.dependency 'DateScrollPicker'
s.dependency 'Firebase/Analytics'
s.dependency 'FirebaseFirestoreSwift'
s.dependency 'Firebase/Core'
s.dependency 'Firebase/Messaging'
s.dependency 'Firebase/Firestore'
s.dependency 'Firebase/Auth'
s.dependency 'Firebase/Analytics'
s.dependency 'Firebase/Performance'

s.resources = "videoLlamada/**/*.{png,jpeg,jpg,xcassets}"

 
end
