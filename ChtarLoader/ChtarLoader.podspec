
Pod::Spec.new do |s|
  s.platform = :ios
  s.name             = 'ChtarLoader'
  s.version          = '0.0.6'
  s.summary          = ' Simple custom loader iOS application available for iPhone and iPad  '
 
  s.description      = <<-DESC
simple custom loader iOS application available for iPhone and iPad
That you can custom it for color and size shape of loader that accept gif file name.
Or you can use option already available in pod.
                       DESC
 
  s.homepage         = 'https://github.com/ragaie/ChtarLoader'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ragaie Alfy' => 'eng.ragaie@gmail.com' }
  s.source           = { :git => 'https://github.com/ragaie/ChtarLoader.git', :tag => s.version.to_s }
 
  s.framework = "UIKit","Foundation","WebKit"
  s.ios.deployment_target = '9.0'

  s.source_files = 'ChtarLoader/Lib Files/*.swift'
  s.resources = 'ChtarLoader/resources/*.gif'
s.resource_bundle = {
    'ChtarLoader' => ['ChtarLoader/resources/*.gif']
}
  
end
