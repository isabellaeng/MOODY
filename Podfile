# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'moody' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for moody
  pod 'FSCalendar'

end


post_install do |pi|
  pi.pods_project.targets.each do |t|
    t.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '16.0'
    end
  end
end
