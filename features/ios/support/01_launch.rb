require 'calabash-cucumber/launcher'
require 'calabash-cucumber'

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


#ENV['DEVICE_TARGET'] = 'iPhone 5 (9.3)'
ENV['DEVICE_TARGET'] = 'iPhone 5 (10.3)'
#ENV['DEVICE_TARGET'] = 'iPhone 7 (10.3)'
#ENV['DEVICE_TARGET'] = '5cdb1910f92bf7645bc981e80d47ec67fda487ca'
#ENV['DEVICE_ENDPOINT'] = 'http://10.1.0.143:37265'
#ENV['BUNDLE_ID'] = 'com.thetrustedinsight.app'
#ENV['RESET_BETWEEN_SCENARIOS'] = '0'
#ENV['NO_LAUNCH'] = '1'
#ENV['QUIT_APP_AFTER_SCENARIO'] = '1'
#ENV['MAX_CONNECT_RETRY'] = '20'

#ENV['DEBUG'] = '1'
#ENV['DEBUG_HTTP'] = '1'
#ENV['QUIT_APP_AFTER_SCENARIO'] = '0'
#ENV['RESET_BETWEEN_SCENARIOS'] = '1'
#ENV['SCREENSHOT_PATH'] = 'ipad__'

=begin

Управление таймаутом у симулятора- дефолтное значение!!!
RunLoop::Xcrun::DEFAULT_OPTIONS[:timeout] = 60
=end
RunLoop::Xcrun::DEFAULT_OPTIONS[:timeout] = 320
RunLoop::Xcrun::DEFAULT_OPTIONS[:log_cmd] = true


Calabash::Cucumber::WaitHelpers::DEFAULT_OPTS[:screenshot_on_error] = false #switch off screenshot generating on failer
RunLoop::Shell::DEFAULT_OPTIONS[:timeout] = 300 #default timeout for launch
#RunLoop::Shell::DEFAULT_OPTIONS[:log_cmd] = true 
RunLoop::CoreSimulator::DEFAULT_OPTIONS[:launch_app_timeout] = 60
RunLoop::CoreSimulator::DEFAULT_OPTIONS[:wait_for_state_timeout] = 60
RunLoop::CoreSimulator::DEFAULT_OPTIONS[:app_launch_retries] = 10
RunLoop::CoreSimulator::DEFAULT_OPTIONS[:launch_app_timeout] = 180
RunLoop::CoreSimulator::DEFAULT_OPTIONS[:uninstall_app_timeout] = 180
RunLoop::CoreSimulator::DEFAULT_OPTIONS[:wait_for_state_timeout] = 180
RunLoop::CoreSimulator::DEFAULT_OPTIONS[:app_launch_retries] = 40
RunLoop::DeviceAgent::Client::DEFAULTS[:http_timeout] = 360
RunLoop::DeviceAgent::Client::WAIT_DEFAULTS[:timeout] = 90
#RunLoop::DeviceAgent::Client::DEFAULTS[:device_agent_install_timeout] = 180


puts RunLoop::Core.default_simulator #print default system simulator
puts RunLoop::Xcrun::DEFAULT_OPTIONS


Before do |scenario|
  launcher = Calabash::Launcher.launcher

  options = {
      #:uia_strategy => :host,
      #:uia_strategy => :shared_element,
      :uia_strategy => :preferences,
      :relaunch_simulator => false
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
    #ap options
    launcher.relaunch(options)
  end

  if @keychain_clear

    keychain_clear

  end

  # Re-installing the app on a device does not clear the Keychain settings,
  # so we must clear them manually.
  if scenario.source_tag_names.include?("@reinstall")
    keychain_clear
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

