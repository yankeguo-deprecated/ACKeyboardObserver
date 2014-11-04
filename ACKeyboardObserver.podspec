Pod::Spec.new do |s|
  s.name             = "ACKeyboardObserver"
  s.version          = "0.1.0"
  s.summary          = "A better way to handle keyboard events"
  s.description      = <<-DESC
  *  Convert six NSNotifications into a delegate with two methods. 
  *  Provide a quick method to perform keyboard related animation.
  *  Compatible with Swift
                       DESC
  s.homepage         = "https://github.com/yanke-guo/ACKeyboardObserver"
  s.license          = 'MIT'
  s.author           = { "YANKE Guo" => "me@yanke.io" }
  s.source           = { :git => "https://github.com/yanke-guo/ACKeyboardObserver.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/*.{h,m}'
end
