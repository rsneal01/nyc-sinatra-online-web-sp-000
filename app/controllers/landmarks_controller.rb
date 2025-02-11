class LandmarksController < ApplicationController
  
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'/landmarks/index'
  end
  
  get '/landmarks/new' do
    erb :'/landmarks/new'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find_by(params[:id])
    erb :'landmarks/show'
  end


  post '/landmarks' do
    # binding.pry
    @landmark = Landmark.create(params[:landmark])
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find_by(params[:id])
    erb :'/landmarks/edit'
  end

  patch '/landmarks/:id' do
    @landmark = Landmark.find_by(params[:id])
    @landmark.update(params[:landmark])
    redirect to("/landmarks/#{@landmark.id}")
  end


end
