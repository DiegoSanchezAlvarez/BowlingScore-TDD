require 'sinatra'
require './config'
require './lib/frame.rb'

frameBowling = Frame.new()

get '/' do
    'hola mundo'
    @roll1 = frameBowling.obtenerPuntaje_Del_Primer_Tiro()
    @roll2 = frameBowling.obtenerPuntaje_Del_Segundo_Tiro()
    @score_frame = frameBowling.obtenerPuntaje_Del_Frame()
    erb :tablero
end

post '/tiro1' do
    frameBowling.lanzamiento_Del_Primer_Tiro(2)
    @roll1 = frameBowling.obtenerPuntaje_Del_Primer_Tiro()
    @roll2 = frameBowling.obtenerPuntaje_Del_Segundo_Tiro()
    @score_frame = frameBowling.obtenerPuntaje_Del_Frame()
    erb :tablero
end

post '/tiro2' do
    frameBowling.lanzamiento_Del_Segundo_Tiro(5)
    @roll1 = frameBowling.obtenerPuntaje_Del_Primer_Tiro()
    @roll2 = frameBowling.obtenerPuntaje_Del_Segundo_Tiro()
    @score_frame = frameBowling.obtenerPuntaje_Del_Frame()
    erb :tablero
end