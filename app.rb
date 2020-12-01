require 'sinatra'
require './config'

get '/' do
    'hola mundo'
    erb :tablero
end