require 'game'
require 'frame'
require 'roll'
# 1 Hacer prueba que falle y que falle por lo que yo quiera que falle.
# 2 Hacer que la prueba pase.
# 3 Refactorizar codigo de produccion(modelo) y de las pruebas(Rspec).

RSpec.describe Game do
    
    before { 
        @juego = Game.new()
        @frame = Frame.new()
        @tiro = Roll.new()
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
=begin
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
=end

    #Pruebas comentadas previamente, en forma refactorizada:
    it 'debería anotarse el puntaje del primer tiro (5) si se derrumban 5 pinos en ese tiro' do
        @frame.lanzamiento_Del_Primer_Tiro(5)
        expect(@frame.obtenerPuntaje_Del_Primer_Tiro()).to eq(5)
    end

    it 'debería anotarse el puntaje del primer tiro (7) si se derrumban 7 pinos en ese tiro' do
        @frame.lanzamiento_Del_Primer_Tiro(7)
        expect(@frame.obtenerPuntaje_Del_Primer_Tiro()).to eq(7)
    end

    it 'debería anotarse el puntaje del segundo tiro (2) si se derrumban 2 pinos en ese tiro' do
        @frame.lanzamiento_Del_Primer_Tiro(1)#El seguno tiro requiere del primer tiro
        @frame.lanzamiento_Del_Segundo_Tiro(2)
        expect(@frame.obtenerPuntaje_Del_Segundo_Tiro()).to eq(2)
    end

    #Aqui se refactorizo para no tener codigo duplicado en el 1er y 2do tiro
    #(algunas pruebas anteriores se comentaron para no refactorizarlas y no perder su escencia y se las volvio a hacer refactorizadas)
    it 'debería anotarse el puntaje del segundo tiro (3) si se derrumban 3 pinos en ese tiro' do
        @frame.lanzamiento_Del_Primer_Tiro(1)#El seguno tiro requiere del primer tiro
        @frame.lanzamiento_Del_Segundo_Tiro(3)
        expect(@frame.obtenerPuntaje_Del_Segundo_Tiro()).to eq(3)
    end
        #Hasta qui ya esta la estructura basica de un frame con su puntaje total y sus puntajes del tiro1 y tiro2
    #Falta calcular el puntaje de un frame apartir de los tiros 1 y 2
    #Posteriormente calcular considerando los spares y strikes
    #Unirlo todo en el game (para que game sea como un main)
    #Hacer las vistas para el scorer de bowling

    it 'debería marcarse como "False" el primer tiro o roll cuando aun no fue realizado' do
        expect(@tiro.obtener_EstadoDeLanzamiento).to eq(FALSE)
    end

    it 'debería marcarse como "True" el primer tiro o roll cuando ya fue realizado' do
        @frame.lanzamiento_Del_Primer_Tiro(3)
        expect(@frame.obtener_EstadoDeLanzamiento_PrimerTiro()).to eq(TRUE)
    end

    it 'debería marcarse como "True" el segundo tiro o roll cuando ya fue realizado' do
        @frame.lanzamiento_Del_Primer_Tiro(1)#El seguno tiro requiere del primer tiro
        @frame.lanzamiento_Del_Segundo_Tiro(3)
        expect(@frame.obtener_EstadoDeLanzamiento_SegundoTiro()).to eq(TRUE)
    end

    #En esta prueba se refactorizo el metodo para hacer lanzamientos para un frame y se refactorizaron las pruebas tambien.
    it 'debería anotarse un score total de 7 en un frame, si el primer tiro es = 2 y el segundo es = 5 ' do
        frame = Frame.new()
        frame.lanzamiento_Del_Primer_Tiro(2)
        frame.lanzamiento_Del_Segundo_Tiro(5)
        expect(frame.obtenerPuntaje_Del_Frame()).to eq(7)
    end


end