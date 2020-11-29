class Roll
    attr_accessor :pins
    def initialize(pins_derrumbados)
        self.pins = pins_derrumbados
    end

    def obtenerPinsDerrumbados()
        return pins
    end
end