class TasksViewsController < ApplicationController
  include HTTParty

  def add_task
  end
  
  def view_tasks
    url = 'http://localhost:3000/view_tasks'
    @tasks =  HTTParty.get(url, headers: {wwwauthenticate: session[:token]} )
    #respond_to do |format|
     # format.js
    #end   
    #@tasks = JSON.parse(t.body)
  end

  def add_new_task
    url = 'http://localhost:3000/create_task'
    if params[:task_title].present?
      response =  HTTParty.post(url, headers: {wwwauthenticate: session[:token]},body: { task: {task_title: params[:task_title], description: params[:description] } })
      
      puts JSON.parse(response.body) 
      #JSON.parse(response.body)
      #render json: {data:  JSON.parse(response.body) }, status: 200  && return
      #byebug
      redirect_to view_tasks_path
    else
      flash[:alert] = "Task title cannot be empty."
      redirect_to add_task_path #notice: "Title field cannot be empty"
      return 
    end
      
      
      
  end
  
  def edit_one_task
    url = 'http://localhost:3000/view_tasks'
    @tasks =  HTTParty.get(url, headers: {wwwauthenticate: session[:token]} )  
    
    @tasks.each do |task|
      if task["id"] == params[:id].to_i
        @user_task = task
      end
    end
  end

  def edit_task
    url = 'http://localhost:3000/edit_task'
    #redirect_to view_tasks_path
    if params[:task_title].present?
      @edit_task =  HTTParty.post(url, body: { task: {task_title: params[:task_title], description: params[:description], status: params[:status].to_i}, id: params[:id].to_i})
    else
      
      redirect_to edit_one_task_path
      flash[:alert] = "Task title cannot be empty." 
    end

    if @edit_task.message.eql?"OK"  
      redirect_to view_tasks_path
      #render json: {message: "task updated"}
    else
      render json: {message: "error while updating task"}
    end
  end

  def delete_task
    url = 'http://localhost:3000/delete_task'
    @del_task =  HTTParty.post(url, body: {id: params[:id].to_i} )  
    redirect_to view_tasks_path
  end

end
