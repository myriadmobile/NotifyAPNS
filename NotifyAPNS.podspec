#
# Be sure to run `pod lib lint NotifyAPNS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NotifyAPNS'
  s.version          = '3.1.0'
  s.license          = { :type => 'Private', :text => <<-LICENSE
                          Copyright 2020 Bushel Inc.
                        LICENSE
                      }
  s.summary          = 'NotifyAPNS is a pod that allows for easy management of push notification services.'

  s.description      = <<-DESC
NotifyAPNS is a pod that allows for easy management of push notification services. You can register, unregister, modify subscriptions, and modify custom fields. This is not (currently) meant for pushing.
                       DESC

  s.homepage         = 'https://github.com/myriadmobile/NotifyAPNS'
  s.author           = { 'Alex Larson' => 'alarson@myriadmobile.com' }
  s.source           = { :http => 'https://github.com/myriadmobile/NotifyAPNS/releases/download/3.1.0/NotifyAPNS.tar.gz' }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.0'
  
  s.vendored_frameworks = 'NotifyAPNS.framework'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'Alamofire', '~> 4'
  s.dependency 'ObjectMapper'
end
