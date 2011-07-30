class HomeController < ApplicationController
  def index
    @test = "Joshua N. Evnin"
    @goal = Goal.find_by_id(1)
  end

end
