class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(params[:task])
    respond_to do |format|
      if @task.save
        @task.story.add_activity("create_task" ,current_user, "#{current_user.name} created task  #{@task.description} " )
        format.html { redirect_to "/stories/#{@task.story_id}/?view=estimate", notice: 'Task was successfully added.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])
    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to "/stories/#{@task.story_id}/?view=estimate", notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def completed
    @task = Task.find(params[:task_id])
    @task.status = "completed"
    @task.save
    @task.story.add_activity("complete_task" ,current_user, "#{current_user.name} completed task  #{@task.description} " )
    redirect_to "/stories/#{@task.story_id}?view=estimate"
  end
  
  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @story = @task.story
    @task.destroy

    respond_to do |format|
      format.html { redirect_to "/stories/#{@story.id}/?view=estimate", notice: 'Task was successfully removed.'  }
      format.json { head :no_content }
    end
  end
end
