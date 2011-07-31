class GoalsController < ApplicationController

  def index
    @goals = Goal.all
    render "index"
  end
  
  def new
    @goal = Goal.new
    @goalTypes = Array.new
    @goalTypes << "Add new"
    Goal.all.each do |g|
      @goalTypes << g.goal_type
    end
  end
  
  def create
    @goal = Goal.new(params[:goal])
    if @goal.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end
  
  def show
    @id = params[:id]
    @goal = Goal.find_by_id(params[:id])
    @private = @goal.private? ? "private" : "public"
  end
  
  def edit
    @goal = Goal.find_by_id(params[:id])
  end
  
  def update
    @goal = Goal.find_by_id(params[:id])
    if @goal.update_attributes(params[:goal])
      logger.info(params[:goal])
      flash[:message] = "success!"
      redirect_to(:action => "show", :id => @goal.id)
    else 
      flash[:message] = "failure!"
      render('edit')
    end 
  end
  
  def destroy
    Goal.find_by_id(params[:id]).destroy()
    flash[:message] = "Successfully deleted goal"
    @goals = Goal.all
    render "index"
  end

end
