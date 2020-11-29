require_relative 'frame.rb'
class Game
    attr_accessor :score #Tambien podria directamente usar @score en todo lado
    
    def initialize()
        self.score = 0
        @frameActual = Frame.new() #Controla el frame actual y el frame anterior
        @frameSiguiente = Frame.new() #Controla el frame siguiente
    end

    def obtenerScoreTotal()#get
        return score
    end

    def obtenerScoreTotal_Del_Frame_Actual()
        return @frameActual.obtenerFrameScore()
    end
end