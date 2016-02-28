Pod::Spec.new do |spec|
  spec.name              = 'SCGridTable'
  spec.version           = '0.9.0'
  spec.license           = { :type => 'MIT', :file => 'LICENSE' }
  spec.homepage          = 'https://github.com/luosch/SCGridTable'
  spec.authors           = { 'Sicheng Luo' => 'i@lsich.com' }
  spec.summary           = 'A uesful and lightweight GridTable for iOS APP'
  spec.source            = { :git => 'https://github.com/luosch/SCGridTable', :tag => 'v0.9.0'}
  spec.source_files      = 'Classes/*.{h,m}'
  spec.framework         = 'Foundation', 'UIKit'
  spec.requires_arc      = true
  spec.platform          = :ios, '7.0'
end