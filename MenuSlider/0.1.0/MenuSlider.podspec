Pod::Spec.new do |s|
 
  # 1
  s.platform = :ios
  s.ios.deployment_target = '10.0'
  s.name = "MenuSlider"
  s.summary = "MenuSlider provides a cool and easy setup side menu."
  s.requires_arc = true
 
  # 2
  s.version = "0.1.0"
 
  # 3
  s.license = { :type => "MIT", :file => "LICENSE" }
 
  # 4 - Replace with your name and e-mail address
  s.author = { "Daniel Rodrigues da Silveira" => "silver.daniel97@gmail.com" }

 # 5 - Replace this URL with your own Github page's URL (from the address bar)
  # For example,
  # s.homepage"
  s.homepage = "https://github.com/thiagovictorino/MenuSlider"
 
  # 6 - Replace this URL with your own Git URL from "Quick Setup"
  s.source = { :git => "https://github.com/thiagovictorino/MenuSlider.git", :tag => "#{s.version}"}
 

  # For example,
  # s.source = { :git => "https://github.com/JRG-Developer/RWPickFlavor.git", :tag => "#{s.version}"}
  
  # 7
  s.framework = "UIKit"
 
  # 8
  s.source_files = "MenuSlider/**/*.{swift}"
 
  # 9
  s.resources = "MenuSlider/**/*.{png,jpeg,jpg,storyboard,xib}"
end
