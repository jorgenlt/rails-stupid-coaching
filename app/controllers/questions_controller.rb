# app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:question][-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
      # 'raise' to stop the code and go to browser. Debugging.
    end
  end
end
