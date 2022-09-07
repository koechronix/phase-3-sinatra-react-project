class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  # GET requests
  get '/tasks' do
    tasks = Task.all_importance
    tasks.to_json
  end

  get '/tasks-low' do
    tasks = Task.filter_importance('low')
    tasks.to_json
  end

  get '/tasks-medium' do
    tasks = Task.filter_importance('medium')
    tasks.to_json
  end

  get '/tasks-high' do
    tasks = Task.filter_importance('high')
    tasks.to_json
    
  end

  get '/tasks/:id' do
    task = Task.find(params[:id])
    task.to_json
  end

  get '/tasks/:id' do
    task = Task.find(params[:id])
    task.to_json
  end

  # POST request(create)

  post '/tasks' do
    task = Task.create(
      item:params[:item],
      importance:params[:importance],
      level_id:params[:level_id]
    )
    task.to_json
  end
  # PATCH request

  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(
      item:params[:item],
      importance:params[:importance],
      level_id:params[:level_id]
    )
    task.to_json
  end
  # DELETE request
  delete '/todo/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end
 

end
