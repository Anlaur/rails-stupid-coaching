class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def ask
  end

  def coach_answer(query)
    # TODO: return coach answer to your_message
    if query.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif query == "I am going to work right now!"
      return ""
    else return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(query)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if query == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif query.upcase.include? "?"
      return "I can feel your motivation! Silly question, get dressed and go to work!"
    else
      return "I can feel your motivation! I don't care, get dressed and go to work!"
    end
  end

end
