#
# Be sure to run `pod lib lint AFNetworking3-RACExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AFNetworking3-RACExtensions'
  s.version          = '1.0.0'
  s.summary          = 'Add RAC support for AFNetworking 3.'

  s.homepage         = 'https://github.com/makeiteasy/AFNetworking3-RACExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xx' => 'xx' }
  s.source           = { :git => 'https://github.com/yuqyuan/AFNetworking3-RACExtensions.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'
  s.default_subspecs = 'NSURLSession'

#  s.source_files = 'AFNetworking3-RACExtensions/Classes/**/*'

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'AFNetworking', '3.0'
    ss.dependency 'ReactiveCocoa', '~> 2.0'
    ss.source_files = 'AFNetworking3-RACExtensions/Classes/AFHTTPSessionManager+RACSupport.{h,m}'
  end
end
