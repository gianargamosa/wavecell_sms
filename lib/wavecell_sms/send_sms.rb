module WavecellSms
  class SendSms
    attr_accessor :source, :destination, :text, :encoding
    # URL = 'https://api.wavecell.com/sms/v1/'
    # Initialize SMS parameters to send message to api
    def initialize(options = {})
      @source = options[:source]
      @destination = options[:destination]
      @text = options[:text]
      @encoding = options[:encoding]
    end
    # Call this to generate url for the api calls
    def send
      generate_url
    end

    private
      # Construct API using the parameters and initial configuration
      def generate_url
        api_key = WavecellSms.configuration.api_key
        sub_account = WavecellSms.configuration.sub_account
        details = [source, destination, text, encoding]
        parameters = {
          source: source,
          destination: destination,
          text: text,
          encoding: encoding
        }
        query_string = parameters.to_a.map { |x| "#{x[0]}=#{x[1]}" }.join("&")
        url = "https://api.wavecell.com/sms/v1/#{sub_account}/single" + "?#{query_string}"
      end

  end
end