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

    def primerLanzamiento(pins_derrumbados)
        return roll1.hacer_Tiro(pins_derrumbados)
    end

    def obtenerPuntaje_Del_PrimerRoll()
        return roll1.obtenerPinsDerrumbados()
    end
    #def actualizarFrameScore(nuevo_frameScore)
    #    frame_score = nuevo_frameScore
    #end
        
end