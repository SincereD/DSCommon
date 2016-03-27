
Pod::Spec.new do |spec|
  spec.name         = 'DSCommon'
  spec.version      = '1.0'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/SIncereD/DSCommon'
  spec.authors      = { 'SIncereD' => 'sincere129120@icloud.com' }
  spec.summary      = 'Common developtools for ios'
  spec.source       = { :git => 'https://github.com/SincereD/DSCommon.git', :tag => 'v1.0' }
  spec.source_files = 'DSCommon/Src/*.{h,m}'
  spec.framework    = 'SystemConfiguration'
end