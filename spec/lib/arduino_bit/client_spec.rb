require 'spec_helper'

module ArduinoBit
  describe Client do
    let(:arduino_firmata) { double(:arduino_firmata) }

    before(:each) do
      allow(ArduinoFirmata).to receive(:connect) { arduino_firmata }
    end

    describe 'd1' do
      context 'passing it true' do
        it 'turns the d1 output on' do
          allow(arduino_firmata).to receive(:digital_write).with(1, true)

          arduino_bit = ArduinoBit::Client.new('serial_port')

          arduino_bit.d1(true)
        end
      end

      context 'passing it false' do
        it 'turns the d1 output off' do
          allow(arduino_firmata).to receive(:digital_write).with(1, false)

          arduino_bit = ArduinoBit::Client.new('serial_port')

          arduino_bit.d1(false)
        end
      end
    end
  end
end