require 'bitaculous/assetify/task'

RSpec.describe Bitaculous::Assetify::Task do
  subject { described_class.new }

  let(:pastel) { Pastel.new }

  describe '#colorize' do
    it 'colorizes a message' do
      message  = 'Bitaculous Assetify'
      expected = pastel.white message

      expect(subject.colorize(message)).to eql expected
    end

    it 'allows the color as an argument' do
      message  = 'Bitaculous Assetify'
      color    = :blue
      expected = pastel.bright_blue message

      expect(subject.colorize(message, color)).to eql expected

      message  = 'Bitaculous Assetify'
      color    = :yellow
      expected = pastel.bright_yellow message

      expect(subject.colorize(message, color)).to eql expected

      message  = 'Bitaculous Assetify'
      color    = :green
      expected = pastel.bright_green message

      expect(subject.colorize(message, color)).to eql expected
    end
  end
end