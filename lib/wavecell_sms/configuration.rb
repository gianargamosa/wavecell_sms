module WavecellSms
  class Configuration
    attr_accessor :api_key, :sub_account

    def initialize
      @api_key
      @sub_account
    end
  end
end