
Pod::Spec.new do |s|
  s.name             = 'UBiMAXTopOnAdapter'
  s.version          = '6.4.89.0'
  s.summary          = 'UBiX聚合Sass SDK TopOn Adapter'
  s.homepage         = 'https://www.ubixai.com/product/md'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :git => 'https://github.com/ubixai/UBiMAXTopOnAdapter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'

  s.static_framework = true
  s.vendored_frameworks = 'UBiMAXTopOnAdapter.framework'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }

  s.dependency 'UBiMAXAdSDK'
  s.dependency 'UBiMAXNative'
  s.dependency 'AnyThinkiOS', '6.4.89'
end
