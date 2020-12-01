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
=begin
    def lanzamiento_Del_Tiro(numero_de_tiro, pins_derrumbados)
        if numero_de_tiro = 1
            roll1.hacer_Tiro(pins_derrumbados)
        end
        if numero_de_tiro = 2
            roll2.hacer_Tiro(pins_derrumbados)
        end
    end
=end
    def lanzamiento_Del_Primer_Tiro(pins_derrumbados)
        if roll1.obtener_EstadoDeLanzamiento() == FALSE
            roll1.hacer_Tiro(pins_derrumbados)
            self.frame_score = frame_score + roll1.obtenerPinsDerrumbados()
        end
    end

    def lanzamiento_Del_Segundo_Tiro(pins_derrumbados)
        if roll1.obtener_EstadoDeLanzamiento() == TRUE  && roll2.obtener_EstadoDeLanzamiento() == FALSE#Quizas ni vaya a ser necesario este if
            roll2.hacer_Tiro(pins_derrumbados)
            self.frame_score = frame_score + roll2.obtenerPinsDerrumbados()
        end
    end
=begin
    def obtenerPuntaje_Del_Tiro(numero_de_tiro)
        if numero_de_tiro = 1
            return roll1.obtenerPinsDerrumbados()
        end
        if numero_de_tiro = 2
            return roll2.obtenerPinsDerrumbados()
        end
    end
=end
    def obtenerPuntaje_Del_Primer_Tiro()
        return roll1.obtenerPinsDerrumbados()
    end

    def obtenerPuntaje_Del_Segundo_Tiro()
        return roll2.obtenerPinsDerrumbados()
    end

    def obtener_EstadoDeLanzamiento_PrimerTiro()
        return roll1.obtener_EstadoDeLanzamiento()
    end

    def obtener_EstadoDeLanzamiento_SegundoTiro()
        return roll2.obtener_EstadoDeLanzamiento()
    end
    
    def obtenerPuntaje_Del_Frame()
        return frame_score
    end
end