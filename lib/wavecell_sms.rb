require "wavecell_sms/version"
require "wavecell_sms/configuration"
require "wavecell_sms/send_sms"

module WavecellSms
  class Error < StandardError; end
  
  class << self
    attr_accessor :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield configuration
  end
end
