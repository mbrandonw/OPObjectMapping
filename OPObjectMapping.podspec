Pod::Spec.new do |s|
  s.name     = 'OPObjectMapping'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  
  s.summary       = 'OPObjectMapping'
  s.homepage      = 'https://github.com/mbrandonw/OPObjectMapping'
  s.author        = { 'Brandon Williams' => 'brandon@opetopic.com' }
  s.source        = { :git => 'git@github.com:mbrandonw/OBObjectMapping.git' }
  s.requires_arc  = true
  
  s.source_files = 'OBObjectMapping/Source/**/*.{h,m}'
  s.requires_arc = true
end