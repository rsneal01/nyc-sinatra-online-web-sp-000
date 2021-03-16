class FiguresController < ApplicationController
  
  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    # binding.pry
    erb :'/figures/new'
  end

  post '/figures' do
    
    @figure = Figure.create(name: params[:figure][:name])
    @figure.titles = Title.all.find(params[:figure][:title_ids])
    # binding.pry
    # @figure.landmarks = Landmark.all.find(params[:figure][:landmark_ids])
    
  end

end
