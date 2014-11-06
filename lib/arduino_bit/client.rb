require 'arduino_firmata'

module ArduinoBit
  class Client
    def initialize(serial_port)
      @arduino = ArduinoFirmata.connect(serial_port)
    end

    def d1(value)
      arduino.digital_write(1, value)
    end

    private

    attr_reader :arduino

  end
end