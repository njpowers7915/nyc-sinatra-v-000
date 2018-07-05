class FiguresController < ApplicationController

    get '/figures' do
        @figures = Figure.all
        erb :'figures/index'
    end

    get '/figures/new' do
        erb :'figures/new'
    end

    get '/figures/:id' do
        @figure = Figure.find(params[:id])
        erb :'figures/show'

    post '/figures/new' do
        @figure = Figure.new(params)
        @figure.save
        redirect '/figures'
    end
end
