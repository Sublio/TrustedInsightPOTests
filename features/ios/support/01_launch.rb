require 'calabash-cucumber/launcher'

# You can find examples of more complicated launch hooks in these
# two repositories:
#
# https://github.com/calabash/ios-smoke-test-app/blob/master/CalSmokeApp/features/support/01_launch.rb
# https://github.com/calabash/ios-webview-test-app/blob/master/CalWebViewApp/features/support/01_launch.rb

module Calabash::Launcher
  @@launcher = nil

  def self.launcher
    @@launcher ||= Calabash::Cucumber::Launcher.new
  end

  def self.launcher=(launcher)
    @@launcher = launcher
  end

  def self.xcode
    Calabash::Cucumber::Environment.xcode
  end


  def self.instruments
    Calabash::Cucumber::Environment.instruments
  end


  def self.simctl
    Calabash::Cucumber::Environment.simctl
  end

  def self.environment
    {
      :simctl => self.simctl,
      :instruments => self.instruments,
      :xcode => self.xcode
    }
  end

  def self.target
    ENV['DEVICE_TARGET'] || RunLoop::Core.default_simulator
  end

  def self.target_is_simulator?
    self.launcher.simulator_target?
  end

  def self.target_is_physical_device?
    self.launcher.device_target?
  end


  def self.install_on_physical_device
    Calabash::IDeviceInstaller.new(self.ensure_ipa, self.target).install_app
  end

  def self.ensure_app_installed_on_device
    ideviceinstaller = Calabash::IDeviceInstaller.new(self.ensure_ipa, self.target)
    unless ideviceinstaller.app_installed?
      ideviceinstaller.install_app
    end
  end
  
end

Before("@no_relaunch") do
  @no_relaunch = true
end


ENV['DEVICE_TARGET'] = 'iPhone 5 (10.2)'
#ENV['DEVICE_TARGET'] = '5cdb1910f92bf7645bc981e80d47ec67fda487ca'
#ENV['DEVICE_ENDPOINT'] = 'http://10.1.0.140:37265'
#ENV['BUNDLE_ID'] = 'com.thetrustedinsight.app'
#ENV['RESET_BETWEEN_SCENARIOS'] = '0'
#ENV['NO_LAUNCH'] = '1'
#ENV['QUIT_APP_AFTER_SCENARIO'] = '1'

#ENV['DEBUG'] = '1'
#ENV['DEBUG_HTTP'] = '1'
#ENV['QUIT_APP_AFTER_SCENARIO'] = '0'
#ENV['RESET_BETWEEN_SCENARIOS'] = '1'
#ENV['SCREENSHOT_PATH'] = 'ipad__'

=begin

bundle identitifer = com.thetrustedinsight.app
ip = 10.1.0.139
Управление таймаутом у симулятора- дефолтное значение!!!
RunLoop::Xcrun::DEFAULT_OPTIONS[:timeout] = 60
simulators = {
  iPhone(Denis Mordvinov) (10.2) [5cdb1910f92bf7645bc981e80d47ec67fda487ca]	
  iPad 2 (9.3) [33BA997F-7A73-4D7B-B46C-D1124E03E4B8] (Simulator)
  iPad Air (9.3) [1E5D7407-2925-49E5-A122-1920E6B43AD7] (Simulator)
  iPad Air 2 (9.3) [E228D9FC-0938-4450-AE93-20357FB84816] (Simulator)
  iPad Pro (9.3) [4D511C2C-80DE-4603-997A-5C7A5F292999] (Simulator)
  iPad Retina (9.3) [9C28A531-42EE-435E-9E67-AD0B604C194B] (Simulator)
  iPhone 4s (9.3) [F0E14A4F-0D58-4BA1-A4CB-F6B22D8CD76A] (Simulator)
  iPhone 5 (9.3) [7DD7D19F-D07D-4EC5-8769-06F661A0A863] (Simulator)
  iPhone 5s (9.3) [BDAC15C8-1857-443B-9E86-B60D65B0BD81] (Simulator)
  iPhone 6 (9.3) [71318C8D-234F-49D1-84EF-30F97BFADE66] (Simulator)
  iPhone 6 Plus (9.3) [53A6BCB7-34A4-48AA-BACB-79107C5327F8] (Simulator)
  iPhone 6s (9.3) [D39F7E8F-ED89-4D7B-9B3D-510907D780E7] (Simulator)
  iPhone 6s (9.3) + Apple Watch - 38mm (2.2) [822E873B-507E-4594-AA5E-5CF02CC94836] (Simulator)
  iPhone 6s Plus (9.3) [3751C23D-FF41-4540-A34B-D4C2979D6F13] (Simulator)
  iPhone 6s Plus (9.3) + Apple Watch - 42mm (2.2) [6F153363-D3F0-4749-AFB3-A44F35826ACD] (Simulator)
}
=end



RunLoop::Xcrun::DEFAULT_OPTIONS[:timeout] = 300

#launcher = Calabash::Launcher.launcher



Before do |scenario|
  launcher = Calabash::Launcher.launcher

  options = {
    #:uia_strategy => :host
    #:uia_strategy => :shared_element
    #:uia_strategy => :preferences
  }

  relaunch = true

  if @no_relaunch
    begin
      launcher.ping_app
      attach_options = options.dup
      attach_options[:timeout] = 1
      launcher.attach(attach_options)
      relaunch = launcher.device == nil
    rescue => e
      RunLoop.log_info2("Tag says: don't relaunch, but cannot attach to the app.")
      RunLoop.log_info2("#{e.class}: #{e.message}")
      RunLoop.log_info2("The app probably needs to be launched!")
    end
  end

  if relaunch
    launcher.relaunch(options)
  end

  ENV["RESET_BETWEEN_SCENARIOS"] = "0"

  # Re-installing the app on a device does not clear the Keychain settings,
  # so we must clear them manually.
  if scenario.source_tag_names.include?("@reset_device_settings")
    if xamarin_test_cloud? || LaunchControl.target_is_physical_device?
      keychain_clear
    end
  end
end

After do |scenario|
  # Calabash can shutdown the app cleanly by calling the app life cycle methods
  # in the UIApplicationDelegate.  This is really nice for CI environments, but
  # not so good for local development.
  #
  # See the documentation for QUIT_APP_AFTER_SCENARIO for a nice debugging workflow
  #
  # http://calabashapi.xamarin.com/ios/file.ENVIRONMENT_VARIABLES.html#label-QUIT_APP_AFTER_SCENARIO
  # http://calabashapi.xamarin.com/ios/Calabash/Cucumber/Core.html#console_attach-instance_method
  

  if launcher.quit_app_after_scenario?
    calabash_exit

  end
end