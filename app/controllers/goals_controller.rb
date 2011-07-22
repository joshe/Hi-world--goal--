class GoalsController < ApplicationController

  def index
    render "index"
  end
  
  def view
    @id = params[:id]
    @goal = Goal.find_by_id(params[:id])
    if @goal.privacy == false
      @privacy = "public"
    else
      @privacy = "private"
    end
  end
  
  def edit
    @goal = Goal.find_by_id(params[:id])
  end
  
  def update
    @goal = Goal.find_by_id(params[:id])
    if @goal.update_attributes(params[:goal])
      logger.info(params[:goal])
      flash[:message] = "success!"
      redirect_to(:action => "view", :id => @goal.id)
    else 
      flash[:message] = "failure!"
      render('edit')
    end
      
  end

end
