class QuestionsController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def ask
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      abort
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
