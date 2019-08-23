
require "spec_helper"

RSpec.describe WavecellSms do
  before do
    WavecellSms.configure do |config|
      config.api_key = ''
      config.sub_account = ''
    end

    @config = WavecellSms::SendSms.new(
      source: '',
      destination: '',
      text: '',
      encoding: ''
    )

    it "has a version" do
      expect(WavecellSms::VERSION).not_to be nil
    end

    describe 'configure method' do
      it 'will has a configuration method' do
        config = WavecellSms.configuration
        expect(config.api_key).to eq ''
        expect(config.sub_account).to eq ''
      end
    end

    describe 'initializing' do
      it 'will set payment details' do
        expect(@config.source).to eq 'srouce'
        expect(@config.destination).to eq 'mobile_number'
        expect(@config.text).to eq 'Hello World! This is a test.'
        expect(@config.encoding).to eq 'AUTO'
      end
    end

    describe 'sending the sms' do
      it 'will generate the wavecell url' do
        expect(@transaction.pay).to include 'source=srouce'
        expect(@transaction.pay).to include 'destination=mobile_number'
        expect(@transaction.pay).to include 'text=Hello World! This is a test.'
        expect(@transaction.pay).to include 'encoding=AUTO'
      end
    end

  end
end