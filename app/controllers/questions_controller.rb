class QuestionsController < ApplicationController

  ANSWERS = {
    1 => 'Great!',
    2 => 'Silly question, get dressed and go to work!',
    3 => 'I don\'t care, get dressed and go to work!'
  }

  def ask
  end

  def answer
    if params[:coach_ask] == 'I am going to work'
      @answer = ANSWERS[1]
    elsif params[:coach_ask].include?('?')
      @answer = ANSWERS[2]
    else
      @answer = ANSWERS[3]
    end
    return
  end
end
