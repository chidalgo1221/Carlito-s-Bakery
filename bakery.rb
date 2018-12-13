require 'sinatra'
require 'sinatra/reloader'
require './cake'
require './cookies'
require './muffin'
register Sinatra::Reloader

get '/' do
    erb :home
end

get'/products' do
    @panetela = Cake.new('pant.jpg', '4/$2.50', 'Panetela de Guayaba')
    @sangria = Cake.new('sangria.jpg', '$10.00', 'Sangria Cake')
    @tres = Cake.new('tres.jpg', '2/$6.50', 'Tres Leche Cake')
    @tainos = Cookies.new('ginger.jpg', '4/$3.25', 'GingerSnap Cookies')
    @polvo = Cookies.new('polvo.jpg', '6/$4.50', 'Polvorones')
    @coco = Cookies.new('coco.jpg', '6/$4.00', 'Besitos de Coco')
    @coquito = Muffin.new('coquito.jpg', '2/$3.00' , 'Coquito Cupcake')
    @pina = Muffin.new('pina.jpg', '2/$3.75', 'Pina Colada Cupcake')
    @flan = Muffin.new('flan.jpg', '2/$3.50', 'Flan Cupake')
    erb :products

end

get '/cookies' do
    @tainos = Cookies.new('ginger.jpg', '4/$3.25', 'GingerSnap Cookies')
    @polvo = Cookies.new('polvo.jpg', '6/$4.50', 'Polvorones')
    @coco = Cookies.new('coco.jpg', '6/$4.00', 'Besitos de Coco')
    erb :cookies
end

get '/muffin' do
    @coquito = Muffin.new('coquito.jpg', '2/$3.00' , 'Coquito Cupcake')
    @pina = Muffin.new('pina.jpg', '2/$3.75', 'Pina Colada Cupcake')
    @flan = Muffin.new('flan.jpg', '2/$3.50', 'Flan Cupake')
    erb :cupcake
end

get '/cake' do
    @panetela = Cake.new('pant.jpg', '4/$2.50', 'Panetela de Guayaba')
    @sangria = Cake.new('sangria.jpg', '$10.00', 'Sangria Cake')
    @tres = Cake.new('tres.jpg', '2/$6.50', 'Tres Leche Cake')
    erb :cake
end