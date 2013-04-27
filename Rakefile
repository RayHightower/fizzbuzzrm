$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'rubygems'
# require 'motion-testflight'
# require 'motion-dtrace'

# PROVISIONING_PROFILE idea borrowed from Jim Weirich's RubyMotion solutions for BNR
PROVISIONING_PROFILE = FileList['provisioning/*.mobile*'].first

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'fizzbuzzrm'
  @iPhone_provision = '/Users/rth/Library/MobileDevice/Provisioning Profiles/24D7E3FB-2D71-4D3E-9809-07ECBE440247.mobileprovision'
  @iPad_provision = '/Users/rth/Library/MobileDevice/Provisioning Profiles/036FE82B-C4D9-4033-B892-F66B24F22EF1.mobileprovision'
  app.provisioning_profile = PROVISIONING_PROFILE
  app.codesign_certificate = 'iPhone Developer: Raymond T Hightower (Z9NP4QZ4AE)'
  app.device_family = :iphone
  app.icons << 'f.png'
end
