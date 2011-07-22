class GoalsController < ApplicationController

  def index
    render "index"
  end
  
  def view
    @id = params[:id]
  end

end
