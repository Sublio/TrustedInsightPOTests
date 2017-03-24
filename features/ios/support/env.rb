require 'calabash-cucumber/launcher'
require 'calabash-cucumber'


RunLoop::DeviceAgent::Client::DEFAULTS[:device_agent_install_timeout] = 240
RunLoop::Xcrun::DEFAULT_OPTIONS[:timeout] = 320
RunLoop::Xcrun::DEFAULT_OPTIONS[:log_cmd] = true