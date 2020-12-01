class Roll
    attr_accessor :pins, :estado_lanzamiento
    def initialize()
        self.pins = 0
        self.estado_lanzamiento = FALSE
    end

    def hacer_Tiro(pins_derrumbados)
        self.pins = pins_derrumbados
        self.estado_lanzamiento = TRUE
    end

    def obtenerPinsDerrumbados()
        return pins
    end

    def obtener_EstadoDeLanzamiento()
        return estado_lanzamiento
    end
end