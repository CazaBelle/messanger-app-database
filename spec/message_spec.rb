require "message"

RSpec.describe Message do
let(:message) {described_class.create(message: "Hello there Mr Subomi")}


  describe '#create' do
    it "expects the message class to store messages" do
      expect(message.message).to eq "Hello there Mr Subomi"
    end
  end

  describe '#twenty_chars' do
    it "will only display first twenty characters of message" do
      expect(message.twenty_chars).to eq "Hello there Mr Subom"
    end
  end

  describe '#format_time' do
    it 'returns a formatted time' do 
      expect(message.format_time).to eq Time.now.strftime("%H:%M:%S - %d/%m/%y")

    end
  end

end
