class CoachingController < ApplicationController

  def answer
    @query = params[:question]
    @answer = coach_answer(@query)
  end

  def ask
    @ask
  end

  def coach_answer(query)
    if @query.end_with?("?")
      Time.now.strftime("%A, %d %b %Y %l:%M %p")
    else
      "I don't care, get dressed and go to work!"
    end
  end

end


