class Roll
    attr_accessor :pins
    def initialize()
        self.pins = 0
    end

    def hacer_Tiro(pins_derrumbados)
        self.pins = pins_derrumbados
    end

    def obtenerPinsDerrumbados()
        return pins
    end
end