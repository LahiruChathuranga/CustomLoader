
Pod::Spec.new do |spec|

  spec.name         = "EMDotLoader"
  spec.version      = "1.0.0"
  spec.summary      = "This is a Custom loader which can be used in IOS Apps."
  spec.description  = "This is a nice library for IOS.it has several custom loaders."

  spec.homepage     = "https://https://github.com/LahiruChathuranga/CustomLoader"
  spec.license      = "MIT"
 
  spec.author             = { "Lahiru Chathuranga" => "hiru.wlc@gmail.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/LahiruChathuranga/CustomLoader.git", :tag => "1.0.0" }
  spec.source_files  = "EMDotLoader/**/*"
  spec.exclude_files = "EMDotLoader/**/*.plist"

end
