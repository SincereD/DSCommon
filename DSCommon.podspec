
Pod::Spec.new do |spec|
  spec.name         = 'DSCommon'
  spec.version      = '1.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/SincereD/DSCommon'
  spec.authors      = { 'SincereD' => 'sincere129120@icloud.com' }
  spec.summary      = 'Common developtools for ios'
  spec.source       = { :git => 'https://github.com/SincereD/DSCommon.git', :tag => 'v1.0' }
  spec.source_files = 'DSCommon/Classes/*.{h,m}'
  spec.framework    = 'SystemConfiguration'
end