class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do
    @landmarks = Landmark.all
    @figures = Figure.all
    erb :'landmarks/index'
  end
  
  get '/landmarks/new' do
    erb :'landmarks/new'
  end
   
  get '/landmark/:id' do
    @landmark = Landmark.find(params[:id])
<<<<<<< HEAD
    erb :'landmarks/show'
=======
    erb :'landmark/show'
>>>>>>> 9e655273c22ab86282dfe3b5d7c3836d1864c077
  end
  
  get '/landmark/:id/edit' do
    @landmark = Landmark.find(params[:id])
<<<<<<< HEAD
    erb :'landmarks/edit'
  end
  
  
  post '/landmarks' do
    Landmark.create(name: params[:landmark][:name], year_completed: params[:landmark][:year_completed])
    redirect '/landmarks'
  end
  
  post '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @landmark.update(params[:landmark])
    @landmark.save
    redirect to "/landmarks/#{@landmark.id}"
=======
    erb :'landmark/edit'
  end
  
  post '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @landmark.name = params['landmark']['name']
    @landmark.year_completed = params['landmark']['year_completed']
    @landmark.save
    redirect to "/landmarks/#{@landmark.id}"
  end
  
  post '/landmarks' do
    Landmark.create(name: params['landmark']['name'], year_completed: params['landmark']['year_completed'])
    redirect '/landmarks'
>>>>>>> 9e655273c22ab86282dfe3b5d7c3836d1864c077
  end
  
 
end
