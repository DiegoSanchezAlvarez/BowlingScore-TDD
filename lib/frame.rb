
class Frame
    attr_accessor :frame_score
    def initialize()
        self.frame_score = 0
    end
    
    def obtenerFrameScore()
        return frame_score
    end

    #def actualizarFrameScore(nuevo_frameScore)
    #    frame_score = nuevo_frameScore
    #end
        
end