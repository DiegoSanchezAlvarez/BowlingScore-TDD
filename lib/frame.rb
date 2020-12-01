require_relative 'roll.rb'
class Frame
    attr_accessor :frame_score, :roll1, :roll2
    def initialize()
        self.frame_score = 0
        self.roll1 = Roll.new()
        self.roll2 = Roll.new()
    end
    
    def obtenerFrameScore()
        return frame_score
    end

    def lanzamiento_Del_Tiro(numero_de_tiro, pins_derrumbados)
        if numero_de_tiro = 1
            roll1.hacer_Tiro(pins_derrumbados)
        end
        if numero_de_tiro = 2
            roll2.hacer_Tiro(pins_derrumbados)
        end
    end

    def lanzamiento_Del_Primer_Tiro(pins_derrumbados)
        roll1.hacer_Tiro(pins_derrumbados)
    end

    def lanzamiento_Del_Segundo_Tiro(pins_derrumbados)
        roll2.hacer_Tiro(pins_derrumbados)
    end

    def obtenerPuntaje_Del_Tiro(numero_de_tiro)
        if numero_de_tiro = 1
            return roll1.obtenerPinsDerrumbados()
        end
        if numero_de_tiro = 2
            return roll2.obtenerPinsDerrumbados()
        end
    end

    def obtener_EstadoDeLanzamiento_PrimerTiro()
        return roll1.obtener_EstadoDeLanzamiento()
    end

    def obtener_EstadoDeLanzamiento_SegundoTiro()
        return roll2.obtener_EstadoDeLanzamiento()
    end
    
    def obtenerPuntaje_Del_Frame()
        
    end
end