require 'game'
require 'marcador'
# 1 Hacer prueba que falle y que falle por lo que yo quiera que falle.
# 2 Hacer que la prueba pase.
# 3 Refactorizar codigo de produccion(modelo) y de las pruebas(Rspec).

RSpec.describe Game do
    
    before { 
        @juego = Game.new()
        #@marcador = ScoreBoard.new()
    }
    # --- Estas primeras pruebas fueron utiles pero debido a refactorizacion en el codigo, ya no funcionaran correctamente---

   
    it 'debería devolver un "score" = 0 al iniciar partida' do #Este es el score total que se ira actualizando
       expect(@juego.obtenerScoreTotal()).to eq(0)
    end

    it 'debería devolver un "score" = 0 para el frame actual' do #Este es el score total que tiene cada frame
        expect(@juego.obtenerScoreTotal_Del_Frame_Actual()).to eq(0)
    end


 #   it 'debería devolver un "score" = 1 si en el primer tiro (roll) derrumbo un pino' do #Este es el score total que tiene cada frame
  #      expect(@marcador.obtenerTotalFrameScore()).to eq(0)
   # end
end