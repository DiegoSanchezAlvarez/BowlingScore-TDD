require 'game'
require 'frame'
require 'roll'
# 1 Hacer prueba que falle y que falle por lo que yo quiera que falle.
# 2 Hacer que la prueba pase.
# 3 Refactorizar codigo de produccion(modelo) y de las pruebas(Rspec).

RSpec.describe Game do
    
    before { 
        @juego = Game.new()
        #@marcador = ScoreBoard.new()
    }
    # --- Estas primeras pruebas fueron cambiando un poco debido a refactorizacion en el codigo---

   
    it 'debería devolver un "score" = 0 al iniciar partida' do #Este es el score total que se ira actualizando
       expect(@juego.obtenerScoreTotal()).to eq(0)
    end

    it 'debería devolver un "frame_score" = 0 para el frame actual' do #Este es el score total que tiene cada frame
        expect(@juego.obtenerScoreTotal_Del_Frame_Actual()).to eq(0)
    end

    it 'debería poder hacer un tiro (roll) que derrumbe 5 pinos y devolver cuantos pinos (pins) se tumbaron' do
        roll = Roll.new()
        roll.hacer_Tiro(5)
        expect(roll.obtenerPinsDerrumbados()).to eq(5)
    end

    it 'debería anotarse el puntaje del primer tiro (5) si se derrumban 5 pinos en ese tiro' do
        frame = Frame.new()
        frame.primerLanzamiento(5)
        expect(frame.obtenerPuntaje_Del_PrimerRoll()).to eq(5)
    end

    it 'debería anotarse el puntaje del primer tiro (7) si se derrumban 7 pinos en ese tiro' do
        frame = Frame.new()
        frame.primerLanzamiento(7)
        expect(frame.obtenerPuntaje_Del_PrimerRoll()).to eq(7)
    end

    it 'debería anotarse el puntaje del segundo tiro (2) si se derrumban 2 pinos en ese tiro' do
        frame = Frame.new()
        frame.segundoLanzamiento(2)
        expect(frame.obtenerPuntaje_Del_SegundoRoll()).to eq(2)
    end

end